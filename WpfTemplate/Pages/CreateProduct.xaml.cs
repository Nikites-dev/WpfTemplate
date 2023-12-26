using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfTemplate.Databse;

namespace WpfTemplate.Pages
{
    /// <summary>
    /// Логика взаимодействия для CreateProduct.xaml
    /// </summary>
    public partial class CreateProduct : Page
    {
        List<ProductType> listProduct = App.Connection.ProductType.ToList();
        int n;

        public CreateProduct()
        {
            InitializeComponent();
            CmbProduct.ItemsSource = listProduct;
        }

        private void BtnCreate_Click(object sender, RoutedEventArgs e)
        {
            var crntProduct = CmbProduct.SelectedItem as ProductType;

            if (EdCountProduct.Text == "" || crntProduct == null)
            {
                MessageBox.Show("Заполните все поля!");
                return;
            }

            bool isNumeric = int.TryParse(EdCountProduct.Text, out n);

            if (!isNumeric)
            {
                MessageBox.Show("Введите корректное количество!");
                return;
            }

            var countRec = Convert.ToInt32(EdCountProduct.Text);

            if (countRec < 1)
            {
                MessageBox.Show("Введите корректное количество!");
                return;
            }

            var receptList = App.Connection.Recept.Where(x => x.IdProduct == crntProduct.IdProductType).ToList();

            foreach (var itemRecept in receptList)
            {
                if ((itemRecept.Material.Count - countRec * itemRecept.MaterialCount) >= 0)
                {

                    continue;
                }
                else
                {
                    MessageBox.Show("Не хватает материала " + itemRecept.Material.Name);
                    return;
                }
            }

            foreach (var itemRecept in receptList)
            {
                var material = App.Connection.Material.FirstOrDefault(x => x.IdMaterial == itemRecept.IdMaterial);
                material.Count -= countRec * itemRecept.MaterialCount;
            }

            for (int i = 0; i < countRec; i++)
            {
                App.Connection.Product.Add(new Product() { Name = crntProduct.ProductName, IdProductType = crntProduct.IdProductType, CreateDate = DateTime.Now });
            }

            App.Connection.SaveChanges();
            MessageBox.Show("Продукты успешно созданы");
        }

        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new MainPageManager());
        }
    }
}

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

namespace WpfTemplate.Pages
{
    /// <summary>
    /// Логика взаимодействия для MainPageManager.xaml
    /// </summary>
    public partial class MainPageManager : Page
    {
        public MainPageManager()
        {
            InitializeComponent();
            listTemlate.ItemsSource = App.Connection.Material.ToList();
        }

        private void btnAddMaterial_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnAddProduct_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new CreateProduct());
        }

        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AuthorizationPage());
        }
    }
}

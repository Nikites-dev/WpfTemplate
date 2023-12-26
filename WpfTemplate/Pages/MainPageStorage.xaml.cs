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
    /// Логика взаимодействия для MainPageStorage.xaml
    /// </summary>
    public partial class MainPageStorage : Page
    {
        public MainPageStorage()
        {
            InitializeComponent();

            listTemplate.ItemsSource = App.Connection.Product.ToList();
        }

        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AuthorizationPage());
        }
    }
}

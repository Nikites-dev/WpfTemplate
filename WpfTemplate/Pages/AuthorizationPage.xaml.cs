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
 

    public partial class AuthorizationPage : Page
    {
        public AuthorizationPage()
        {
            InitializeComponent();
        }

        private void BtnSign_Click(object sender, RoutedEventArgs e)
        {
            if (EdLogin.Text == "" || EdPassword.Password == "")
            {
                MessageBox.Show("Заполните поля!");
                return;
            }

            var user = App.Connection.User.Where(x => x.Login == EdLogin.Text && x.Password == EdPassword.Password).FirstOrDefault();

            if (user == null)
            {
                MessageBox.Show("Пользователь не найден!");
                return;
            }

            if (user.IdRole == 1)
            {
                NavigationService.Navigate(new MainPageStorage());
            }
            else if (user.IdRole == 2)
            {
                NavigationService.Navigate(new MainPageManager());
            }
            else
            {
                MessageBox.Show("Некорректная роль пользователя!");
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace lr_4_5
{
    /// <summary>
    /// Логика взаимодействия для UserAccountPage.xaml
    /// </summary>
    public partial class UserAccountPage : Window
    {
        private string phoneNumber;
        private List<UIElement> canvasElements = new List<UIElement>();

        public UserAccountPage()
        {
            InitializeComponent();

        }
        public UserAccountPage(string phoneNumber)
        {
            InitializeComponent();
            this.phoneNumber = phoneNumber;
            userPhoneNumber.Text = "+" + phoneNumber;
        }

        private void Canvas_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            if (e.NewSize.Width < 120)
            {
                foreach (UIElement child in Canvas1.Children)
                {
                    child.Visibility = Visibility.Collapsed; 
                }
                //home.Visibility = Visibility.Visible;
            }
            else 
            {
                foreach (UIElement child in Canvas1.Children)
                {
                    child.Visibility = Visibility.Visible; 
                }
                //home.Visibility = Visibility.Collapsed;
            }
        }

        private void Create_Message_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Delete_Account_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Are you sure?", "Delete user account", MessageBoxButton.YesNo);
            if (result == MessageBoxResult.Yes)
            {
                using (ApplicationContext db = new ApplicationContext())
                {
                    var account = db.Users.FirstOrDefault(u => u.Phone_number == phoneNumber);

                    if (account != null)
                    {
                        int userID = account.id;
                        db.Users.Remove(account);
                        db.SaveChanges();
                    }
                    
                }
                UserPage page = new UserPage();
                page.Show();
                Hide();
            }
            else
            {

            }
        }

        private void Log_out_Click(object sender, RoutedEventArgs e)
        {
            UserPage page = new UserPage();
            page.Show();
            Hide();
        }

        private void Offer_Click(object sender, RoutedEventArgs e)
        {
            OffersAndPromotions offers = new OffersAndPromotions();
            offers.Show();
            Hide();
        }
    }
}

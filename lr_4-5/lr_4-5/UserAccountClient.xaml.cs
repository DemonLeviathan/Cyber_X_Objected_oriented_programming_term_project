﻿using System;
using System.Collections.Generic;
using System.Data;
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
using System.Windows.Shapes;
using System.Windows.Threading;

namespace lr_4_5
{
    /// <summary>
    /// Логика взаимодействия для UserAccountClient.xaml
    /// </summary>

    public partial class UserAccountClient : Window
    {
        private string phoneNumber;
        private List<UIElement> canvasElements = new List<UIElement>();
        OrderPage order = new OrderPage();
        DataTable table = new DataTable();
        Order checkOrder = new Order();

        private DispatcherTimer timer;
        private DateTime orderStartTime;
        private int orderDuration;
        private DateTime timerStartTime;
        private int timerDuration = 60;
        public UserAccountClient()
        {
            InitializeComponent();
        }

        public UserAccountClient(string phoneNumber)
        {
            InitializeComponent();
            this.phoneNumber = phoneNumber;
            userPhoneNumber.Text = "+" + phoneNumber;
            App.Phone_Number = phoneNumber;
            order = new OrderPage();
            order.OrderPhoneNumber = App.Phone_Number;
            //order.DataContext = order;

            using (ApplicationContext db = new ApplicationContext())
            {
                var user = db.Users.FirstOrDefault(u => u.Phone_number == phoneNumber);

                if (user != null)
                {
                    var userOrder = db.Orders.FirstOrDefault(o => o.User_id == user.id);

                    if (userOrder != null)
                    {
                        checkOrder = userOrder;
                        orderStartTime = DateTime.Parse(checkOrder.Date_start + " " + checkOrder.Time_start);
                        orderDuration = checkOrder.Hour_quantity;
                        StartTimer();
                    }
                }
            }
        }

        private void StartTimer_Click(object sender, RoutedEventArgs e)
        {
            timerStartTime = DateTime.Now;
            StartTimer();
        }

        private void StartTimer()
        {
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            TimeSpan elapsedTime = DateTime.Now - timerStartTime;
            TimeSpan remainingTime = TimeSpan.FromSeconds(timerDuration) - elapsedTime;

            if (remainingTime.TotalSeconds <= 0)
            {
                timer.Stop();
                timerTextBlock.Text = "Timer Completed";
            }
            else
            {
                timerTextBlock.Text = remainingTime.ToString(@"hh\:mm\:ss");
            }
        }

        private void Canvas_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            if (e.NewSize.Width < 120)
            {
                foreach (UIElement child in Canvas1.Children)
                {
                    child.Visibility = Visibility.Collapsed;
                }
            }
            else
            {
                foreach (UIElement child in Canvas1.Children)
                {
                    child.Visibility = Visibility.Visible;
                }
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
            Authorization page = new Authorization();
            page.Show();
            Hide();
        }

        private void Offer_Click(object sender, RoutedEventArgs e)
        {
            OffersAndPromotionsClient offers = new OffersAndPromotionsClient();
            offers.Show();
            Hide();
        }

        private void DataGridView_Loaded(object sender, RoutedEventArgs e)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                var orders = db.Orders.ToList();
                var user = db.Users.FirstOrDefault(u => u.Phone_number == phoneNumber);

                if (user != null)
                {
                    var userOrders = db.Orders
                        .Where(o => o.User_id == user.id)
                        .ToList();

                    table.Columns.Add("Id", typeof(int));
                    table.Columns.Add("Date Start", typeof(string));
                    table.Columns.Add("Time Start", typeof(string));
                    table.Columns.Add("Order Name", typeof(string));
                    table.Columns.Add("Computer", typeof(int));
                    table.Columns.Add("Hours", typeof(int));

                    foreach (var order in userOrders)
                    {
                        table.Rows.Add(order.user_id, order.date_start, order.time_start, order.order_name, order.computer_number, order.hour_quantity);
                    }

                    dataGridView.ItemsSource = table.DefaultView;

                }

            }
        }

        private void Review_click(object sender, RoutedEventArgs e)
        {
            ReviewWindow review = new ReviewWindow();
            review.Show();
        }

        
    }
}

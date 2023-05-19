using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Net;
using System.Net.Mail;
using System;
using System.Linq;

namespace lr_4_5
{
    public partial class OrderPage : Window, INotifyPropertyChanged
    {
        ApplicationContext db = new ApplicationContext();
        private ObservableCollection<string> notify;
        private ObservableCollection<string> payment;
        private string email;
        private string orderPhoneNumber;
        private string selectedNotification;
        private string offerName;
        private float offerPrice;
        private string phoneNumber;


        public const string adminEmail = "cyberxleviathan@gmail.com";
        public const String clientEmail = "demon.leviathan.666.13.666@gmail.com";
        public const String adminPassword = "mvhbmkztsefeqbtk";       
        public OrderPage()
        {
            InitializeComponent();

            notify = new ObservableCollection<string>()
            {
                "SMS",
                "Mail"
            };

            payment = new ObservableCollection<string>()
            {
                "Cash",
                "Card"
            };

            DataContext = this;

            Notify = notify;
            Payment = payment;

            phone_Number.Text = App.Phone_Number;

        }

        public ObservableCollection<string> Notify
        {
            get { return notify; }
            set
            {
                notify = value;
                OnPropertyChanged();
            }
        }

        public ObservableCollection<string> Payment
        {
            get { return payment; }
            set
            {
                payment = value;
                OnPropertyChanged();
            }
        }

        public string Email
        {
            get { return email; }
            set
            {
                email = value;
                OnPropertyChanged();
            }
        }

        public string OrderPhoneNumber
        {
            get { return orderPhoneNumber; }
            set
            {
                orderPhoneNumber = value;
                OnPropertyChanged();
            }
        }

        public string SelectedNotification
        {
            get { return selectedNotification; }
            set
            {
                selectedNotification = value;
                OnPropertyChanged();
                OnPropertyChanged(nameof(IsEmailEnabled));
                OnPropertyChanged(nameof(IsPhoneNumberEnabled));
            }
        }

        public string OfferName
        {
            get { return offerName; }
            set
            {
                offerName = value;
                OnPropertyChanged();
            }
        }

        public float OfferPrice
        {
            get
            {
                return offerPrice;
            }
            set
            {
                offerPrice = value;
                OnPropertyChanged();
            }
        }

        private int myNumber;

        public int MyNumber
        {
            get { return myNumber; }
            set
            {
                if (myNumber != value)
                {
                    myNumber = value;
                    OnPropertyChanged();
                }
            }
        }


        public bool IsEmailEnabled => SelectedNotification == "Mail";
        public bool IsPhoneNumberEnabled => SelectedNotification == "SMS";

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private static float FinalCost(int hourQuantity, float serviceCost)
        {
            return hourQuantity * serviceCost;
        }
        private void SendMail(object sender, RoutedEventArgs e)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                User user = db.Users.FirstOrDefault(i => i.Phone_number == App.Phone_Number);

                if (user != null)
                {
                    int user_id = user.id;
                    string desiredDate = dateStart.Text.Trim();
                    string desiredTime = timeStart.Text.Trim();
                    int hour_quantity = int.Parse(hour.Text.Trim());
                    string order_name = serviceName.Text.Trim();
                    int total_price = (int)FinalCost(MyNumber, OfferPrice);
                    int computer_number = int.Parse(computerNumber.Text.Trim());
                    
                    
                    if (user != null)
                    {
                        bool hasExistingOrder = db.Orders.Any(o =>
                            o.Date_start == desiredDate &&
                            o.Time_start == desiredTime &&
                            o.Computer_number == computer_number);                        

                        if (hasExistingOrder  )
                        {
                            MessageBox.Show("An order for the specified date, time and computer already exists.");
                        }

                        else
                        {                            
                            // Mail
                            float finalCost;
                            if (OfferName.Contains("Package"))
                            {
                                finalCost = OfferPrice;
                                total_price = (int)FinalCost(1, OfferPrice);
                                hour_quantity = 8;
                                Order order = new Order(user_id, desiredDate, desiredTime, hour_quantity, order_name, total_price, computer_number);
                                db.Orders.Add(order);
                                db.SaveChanges();
                            }
                            else
                            {
                                finalCost = FinalCost(MyNumber, OfferPrice);
                                Order order = new Order(user_id, desiredDate, desiredTime, hour_quantity, order_name, total_price, computer_number);
                                db.Orders.Add(order);
                                db.SaveChanges();
                            }
                            string subjectMail = "Service booking notice";
                            string bodyMail = $"Your service order {serviceName.Text} had been successfully booked.\n We are very glad that you have decided to use the services of our club.\n" +
                                $"Total price of your service: {finalCost} BYN.\n Date: {desiredDate}, {desiredTime}.\n Computer number: {computer_number}.\n Hour quantity: {hour_quantity}";
                            int hourQuantity = MyNumber;
                            try
                            {
                                if (emailTextBox.Text.Length > 0 && notifyWay.Text == "Mail")
                                {
                                    var mail = Mail.CreateMail("Cyber X", "cyberxleviathan@gmail.com", emailTextBox.Text, subjectMail, bodyMail);
                                    Mail.SendMail("smtp.gmail.com", 587, "cyberxleviathan@gmail.com", "mvhbmkztsefeqbtk", mail);

                                    MessageBox.Show("Message was send to your mail");
                                }
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show("Unsuccess!\n" + ex.Message);
                            }
                        }
                    }
                    else
                    {
                        MessageBox.Show("User not found.");
                    }
                   
                }

                else
                {

                }
            }
        }
    }
}

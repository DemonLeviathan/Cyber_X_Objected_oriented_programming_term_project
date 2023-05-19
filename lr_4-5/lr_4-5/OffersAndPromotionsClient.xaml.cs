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
using System.Windows.Shapes;

namespace lr_4_5
{
    /// <summary>
    /// Логика взаимодействия для OffersAndPromotionsClient.xaml
    /// </summary>
    public partial class OffersAndPromotionsClient : Window
    {
        List<Offer> offers = new List<Offer>();

        public OffersAndPromotionsClient()
        {
            InitializeComponent();
            offers.Add(new Offer("Morning Pass", "Get your gaming fix with our Gaming Morning Pass! Perfect for those who love to game, this pass gives you access to our top-of-the-line gaming " +
               "PCs and consoles from 8am to 5pm. Whether you're into competitive gaming or just looking to unwind with some friends, our Gaming Morning Pass is the ultimate way to start your day. " +
               "Plus, enjoy free coffee and snacks while you play. Don't miss out on this exclusive offer – get your Gaming Morning Pass today!", 2, "08:00-17:00", Range.General));
            offers.Add(new Offer("Evening Pass", "Get your gaming fix with our Gaming Evening Pass! Perfect for those who love to game, this pass gives you access to our top-of-the-line gaming " +
                "PCs and consoles from 5pm to 8am. Whether you're into competitive gaming or just looking to unwind with some friends, our Gaming Evening Pass is the ultimate way to start your day. " +
                "Plus, enjoy free coffee and snacks while you play. Don't miss out on this exclusive offer – get your Gaming Evening Pass today!", 3, "17:00-08:00", Range.General));

            offers.Add(new Offer("VIP Morning Rate", "Our VIP Morning Rate is perfect for those who want to have an exclusive and premium gaming experience. This rate includes access to our VIP lounge, " +
                "where you can enjoy complimentary snacks and beverages, comfortable seating, and personalized service from our attentive staff. In addition, you will have access to our state-of-the-art " +
                "gaming equipment, including the latest gaming consoles and high-performance gaming PCs. Whether you are a casual or competitive gamer, our VIP Morning Rate is the ultimate way to elevate " +
                "your gaming experience.", 3, "08:00-17:00", Range.VIP));
            offers.Add(new Offer("VIP Evening Rate", "Our VIP Evening Rate is perfect for those who want to have an exclusive and premium gaming experience. This rate includes access to our VIP lounge, " +
                "where you can enjoy complimentary snacks and beverages, comfortable seating, and personalized service from our attentive staff. In addition, you will have access to our state-of-the-art " +
                "gaming equipment, including the latest gaming consoles and high-performance gaming PCs. Whether you are a casual or competitive gamer, our VIP Evening Rate is the ultimate way to elevate " +
                "your gaming experience.", 4, "17:00-08:00", Range.VIP));

            offers.Add(new Offer("Nighttime Regular Package", "Enjoy our computer club during the late hours! Get access to all of our facilities and equipment from 10 pm to 8 am, at a discounted price. Perfect for " +
                "night owls who love to game, work or study without the crowds.", 15, "22:00-8:00", Range.General));
            offers.Add(new Offer("Night VIP Package", "Experience the ultimate gaming pleasure with our VIP Night Package! Enjoy exclusive access to our premium gaming stations and top-of-the-line equipment. " +
                "Indulge in complimentary snacks and beverages, and take advantage of our extended hours until the early morning. Our VIP Night Package is perfect for serious gamers looking for an unforgettable " +
                "gaming experience.", 17, "22:00-8:00", Range.VIP));

            offers.Add(new Offer("Morningtime Regular Package", "Our computer club offers an affordable morning package for those who enjoy playing games, browsing the internet or working on their projects. With this package," +
                " you can enjoy unlimited access to our computers, high-speed internet, and all the necessary software. Start your day off right and get the most out of your computer experience with our standard morning package.",
                15, "9:00-14:00", Range.General));
            offers.Add(new Offer("Morningtime VIP Package", "For those who want to take their computer experience to the next level, we offer a VIP morning package. With this package, you can enjoy all the benefits of our standard package, " +
                "plus additional perks. As a VIP member, you will have access to our premium computers and software, as well as a dedicated staff member to assist you with any technical issues. Start your day in style and enjoy the " +
                "ultimate computer experience with our VIP morning package.", 17, "9:00-14:00", Range.VIP));

            offersList.ItemsSource = offers;
        }
        private void offersList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (e.AddedItems.Count > 0)
            {
                titleBlock.Inlines.Clear();
                Offer selectedOffer = e.AddedItems[0] as Offer;

                titleBlock.Text = $"{selectedOffer.Name} \n  ";
                descriptionBlock.Text = $"{selectedOffer.Description}\n";
                infoBlock.Text = $"Time: {selectedOffer.Time}\n Price: {selectedOffer.Price}\n Range: {selectedOffer.Range}";               
            }
            else
            {
                titleBlock.Text = string.Empty;
            }
        }

        private void Order_Button_Click(object sender, RoutedEventArgs e)
        {
            var selectedService = offersList.SelectedItem as Offer;
            
            if (selectedService != null)
            {
                string selectedServiceName = selectedService.Name;
                float selectedServicePrice = selectedService.Price;
                
                OrderPage orderPage = new OrderPage();
                orderPage.OfferName = selectedServiceName;
                orderPage.OfferPrice = selectedServicePrice;
                orderPage.Show();
            }
        }

        private void Button_Click_Back(object sender, RoutedEventArgs e)
        {
            UserAccountClient client = new UserAccountClient();
            client.Show();
            Hide();
        }
    }
}

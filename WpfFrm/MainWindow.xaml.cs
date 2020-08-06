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

namespace WpfFrm
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        private QueryDataViewModel queryDataViewModel = null;
        public MainWindow()
        {
            InitializeComponent();
            queryDataViewModel = new QueryDataViewModel(DataDemo.DataList);
            base.DataContext = this.queryDataViewModel;
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            if (this.queryDataViewModel != null)
            {
                var key = this.txtKeyword.Text;
                this.queryDataViewModel.SearchText = key;
                this.queryDataViewModel.QueryCommand.Execute(null);
            }
        }

        private void btnGet_Click(object sender, RoutedEventArgs e)
        {
            WinPIC winPic = new WinPIC();
            winPic.Show();
            this.Close();

        }

        private void btnPage_Click(object sender, RoutedEventArgs e)
        {
            ///Windows 调转到 page 时

            NavigationWindow window = new NavigationWindow();

            window.Source = new Uri("Page1.xaml", UriKind.Relative);
            window.Show();


        }
    }
}

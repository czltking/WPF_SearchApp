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

namespace WpfFrm
{
    /// <summary>
    /// WinPIC.xaml 的交互逻辑
    /// </summary>
    public partial class WinPIC : Window
    {
        private PhotoList _photos;
        public WinPIC()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //_photos = (PhotoList)(Resources["MyPhotos"] as ObjectDataProvider).Data;
            //_photos.Path = "images";
            _photos = (PhotoList)(Resources["MyPhotos"] as ObjectDataProvider).Data;
            _photos.Path = "images";
        }
    }
}

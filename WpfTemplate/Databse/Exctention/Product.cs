using IronBarCode;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace WpfTemplate.Databse
{
    public partial class Product
    {
        public BitmapImage QRCode
        {
            get
            {
                using (var m = QRCodeWriter.CreateQrCode($"{this.IdProduct}",
                      300, QRCodeWriter.QrErrorCorrectionLevel.Medium)
                  .ToPngStream())
                {
                    var bitmap = new BitmapImage();
                    bitmap.BeginInit();
                    bitmap.StreamSource = m;
                    bitmap.CacheOption = BitmapCacheOption.OnLoad;
                    bitmap.EndInit();
                    return bitmap;
                }
            }
        }
    }
}

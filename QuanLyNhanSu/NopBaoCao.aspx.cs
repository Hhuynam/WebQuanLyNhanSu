using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyNhanSu
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_GuiBaoCao_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();

            if (FileUpload1.HasFile)
            {
                try
                {
                    sb.AppendFormat("Uploading file: {0}", FileUpload1.FileName);

                    // Kiểm tra kiểu tệp (tùy chọn)
                    string[] allowedTypes = { "image/jpeg", "image/png", "application/pdf" };
                    if (!allowedTypes.Contains(FileUpload1.PostedFile.ContentType))
                    {
                        sb.Append("<br/> Invalid file type. Only JPEG, PNG, and PDF are allowed.");
                        lblmessage.Text = sb.ToString();
                        return;
                    }

                    // Lưu tệp vào thư mục
                    FileUpload1.SaveAs(@"D:\QuanLyNhanSu\QuanLyNhanSu\QuanLyNhanSu\Upload\" + FileUpload1.FileName);

                    // Hiển thị thông tin tệp
                    sb.AppendFormat("<br/> Save As: {0}", FileUpload1.PostedFile.FileName);
                    sb.AppendFormat("<br/> File type: {0}", FileUpload1.PostedFile.ContentType);
                    sb.AppendFormat("<br/> File length: {0}", FileUpload1.PostedFile.ContentLength);
                    sb.AppendFormat("<br/> File name: {0}", FileUpload1.PostedFile.FileName);

                }
                catch (Exception ex)
                {
                    sb.Append("<br/> Error <br/>");
                    sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
                }
            }
            else
            {
                sb.Append("<br/> Please select a file to upload.");
                lblmessage.Text = sb.ToString();
            }
        }
    }
}
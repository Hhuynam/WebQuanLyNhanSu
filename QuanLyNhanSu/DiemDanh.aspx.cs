using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyNhanSu
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Xử lý sự kiện khi người dùng nhấn nút Điểm danh
        protected void btnDiemDanh_Click(object sender, EventArgs e)
        {
            // Lấy thời gian hiện tại
            DateTime currentTime = DateTime.Now;

            // Hiển thị kết quả điểm danh
            lblDiemDanhResult.Text = "Bạn đã điểm danh vào lúc: " + currentTime.ToString("HH:mm:ss dd/MM/yyyy");
        }
    }
}
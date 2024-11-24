var currentImageIndex = 0;
var images = [
    "https://e-magazine.asiamedia.vn/wp-content/uploads/2022/02/cong-ty-samsung.jpg",
    "https://img.timviec.com.vn/2020/10/thi-gsat-6.jpg",
    "https://cdn.img.kevesko.vn/images/sharing/article/vie/20599828.jpg?110297491673782268"
];

function changeImage() {
    currentImageIndex++;
    if (currentImageIndex >= images.length) {
        currentImageIndex = 0;
    }

    // Cập nhật lại hình ảnh trong UpdatePanel
    document.getElementById("Image4").src = images[currentImageIndex];
    document.getElementById("Image5").src = images[(currentImageIndex + 1) % images.length];
    document.getElementById("Image6").src = images[(currentImageIndex + 2) % images.length];
}

// Chạy slideshow mỗi 5 giây
setInterval(changeImage, 5000); // 5000 ms = 5 seconds
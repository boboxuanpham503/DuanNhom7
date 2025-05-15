<?php
// Kết nối database 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "qlks";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    die("Kết nối thất bại: " . $e->getMessage());
}


// Lấy danh sách phòng và dịch vụ
$roomsList = $conn->query("SELECT * FROM phong ORDER BY MaPhong ASC")->fetchAll(PDO::FETCH_ASSOC);
$servicesList = $conn->query("SELECT * FROM dichvu ORDER BY MaDichVu ASC")->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Phòng & Dịch Vụ</title>
    <link rel="stylesheet" href="web.css">
</head>
<body>
    <header>
        <div class="header-container">
            <div class="logo">
                <img src="logo/l (1).png" alt="Logo Khách Sạn">
                <h1>Khách Sạn GoodNight</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="index.html" class="active">Trang Chủ</a></li>
                    <li><a href="phong-dichvu.html">Phòng & Dịch Vụ</a></li>
                    <li><a href="dat-phong.php">Đặt Phòng</a></li>
                    <li><a href="dangnhap-dangky.html">Đăng Nhập & Đăng Ký</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="container">
        <h2>Danh sách phòng</h2>
        <?php if(!empty($roomsList)): ?>
            <?php foreach ($roomsList as $room): ?>
                <div class="detail-section">
                    <div class="room-image">
                        <img src="<?= htmlspecialchars($room['HinhAnh']) ?>" alt="Hình ảnh phòng <?= htmlspecialchars($room['MaPhong']) ?>">
                    </div>
                    <div class="room-info">
                        <div class="detail-item">
                            <label>Mã phòng:</label>
                            <span><?= htmlspecialchars($room['MaPhong']) ?></span>
                        </div>
                        <div class="detail-item">
                            <label>Loại phòng:</label>
                            <span><?= htmlspecialchars($room['LoaiPhong']) ?></span>
                        </div>
                        <div class="detail-item">
                            <label>Giá:</label>
                            <span><?= number_format($room['GiaThue'], 0, ',', '.') ?> VND</span>
                        </div>
                        <div class="detail-item">
                            <label>Tình trạng:</label>
                            <span><?= htmlspecialchars($room['TinhTrang']) ?></span>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p class="error">Không có phòng nào.</p>
        <?php endif; ?>

        <h2>Danh sách dịch vụ</h2>
        <?php if(!empty($servicesList)): ?>
            <?php foreach ($servicesList as $service): ?>
                <div class="detail-section">
                    <div class="service-info">
                        <div class="detail-item">
                            <label>Tên dịch vụ:</label>
                            <span><?= htmlspecialchars($service['TenDichVu']) ?></span>
                        </div>
                        <div class="detail-item">
                            <label>Giá:</label>
                            <span><?= number_format($service['GiaDichVu'], 0, ',', '.') ?> VND</span>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p class="error">Không có dịch vụ nào.</p>
        <?php endif; ?>
    <footer>
        <div class="footer-content">
            <p><strong>Địa chỉ:</strong> Quy Nhơn, Bình Định</p>
            <p><strong>SDT:</strong> 0987 654 321</p>
            <p><strong>Email:</strong> info@goodnight.com</p>
        </div>
    </footer>
</body>
</html>

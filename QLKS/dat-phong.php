<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt phòng</title>
    <!-- <link rel="stylesheet" href="thong-tin-dat-phong.css"> -->
    <link rel="icon" type="img/png" href="image/l (1).png">
</head>
<body>
    <div class ="header">
        <?php include 'header.php'; ?>
    </div>

    <div class="container">
        <h1>Thông tin đặt phòng</h1>
        <form>
            <label for="email">Email</label>
            <input type="email" id="email" placeholder="Nhập email của bạn" required>

            <label for="check-in">Ngày nhận phòng</label>
            <input type="date" id="check-in" required>

            <label for="check-out">Ngày trả phòng</label>
            <input type="date" id="check-out" required>

            <label for="select-room">Chọn số lượng phòng</label>

            <select id="select-room">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>

            <div class="wrap">
                <a href="Thong-bao.html">
                    <button>Đặt phòng</button>
                </a>
            </div>
        </form>
    </div>
    <script>
        document.getElementById("dp1").addEventListener("click",function(event){
            event.preventDefault();
            window.location.href = "Thong-bao.html"
        })
    </script>
</body>
</html>

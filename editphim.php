<?php
   include'./config.php';
    //lấy id phim
    if(isset($_GET['id'])){
        $id =(int)$_GET['id'];
        $sql ="SELECT * FROM movie WHERE id =$id";
        $query = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($query);
      
    }else{
        header("Location:danhsachphim.php");
    }
?>

<?php
    include'./config.php';
    if(isset($_POST['editphim'])==true){
        $TenPhim = $_POST['TenPhim'];
        $TrangThai = $_POST['TrangThai'];
        $DienVien = $_POST['DienVien'];
        $DaoDien = $_POST['DaoDien'];
        // $TheLoai = $_POST['TheLoai'];
        $ThoiLuong = $_POST['ThoiLuong'];
        $NgonNgu = $_POST['NgonNgu'];
        // $Poster = $_POST['Poster'];
        $Trailer = $_POST['Trailer'];
        $DoTuoi = $_POST['DoTuoi'];
        // $NgayChieu = $_POST['NgayChieu'];
        // $NgayKetThuc = $_POST['NgayKetThuc'];
        $MoTa = $_POST['MoTa'];

        $sql = "UPDATE  movie SET TenPhim=?, TrangThai=?, DienVien=?, DaoDien=?,ThoiLuong=?, NgonNgu=?, Trailer=?, DoTuoi=?, MoTa=? WHERE id=$id";
        $stmt = $conn -> prepare($sql);
        $stmt -> execute([ $TenPhim, $TrangThai, $DienVien, $DaoDien,$ThoiLuong, $NgonNgu, $Trailer,$DoTuoi,$MoTa]);
        header("location:danhsachphim.php");
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <title>Cinema Admin</title>
</head>

<!-- Thanh menu-->
<nav style="background-color: #fff7eb;" class="navbar navbar-expand-lg navbar-light py-3">
        <div class="container"><a href="admin.php" class="navbar-brand d-flex align-items-center"> <i class="fa fa-snowflake-o fa-lg text-primary mr-2"></i><strong>ADMIN</strong></a>
            <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>
            <div id="navbarSupportedContent" class="collapse navbar-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: black;">
                        PHIM
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="phimdangchieu.php">ĐANG CHIẾU</a>
                            <a class="dropdown-item" href="phimsapchieu.php">SẮP CHIẾU</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="danhsachphim.php">TẤT CẢ PHIM</a>
                        </div>
                    </li>
                    <li class="nav-item active"><a href="danhsachrapphim.php" class="nav-link">RẠP PHIM </a></li>
                    <li class="nav-item active"><a href="lichchieuphim.php" class="nav-link"> LỊCH CHIẾU</a></li>
                    <li class="nav-item active"><a href="thongtinkhachhang.php" class="nav-link">KHÁCH HÀNG </a></li>
                    <li class="nav-item active"><a href="thongke.php" class="nav-link">THỐNG KÊ</a></li>
                    <li class="nav-item active"><a href="danhsachve.php" class="nav-link">ĐẶT VÉ</a></li>
                    <li class="nav-item active"><a href="logout.php" class="nav-link"> ĐĂNG XUẤT</a></li>
                </ul>
            </div>
        </div>
    </nav>

<body>
    
    <div class="container" style="padding: 100px">
    <h1 style="text-align: center;">CHỈNH SỬA PHIM</h1>
    <h4 style="text-align: center;"><a href="./danhsachphim.php">Trở về danh sách phim</a></h4>
    <form method="POST">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Tên Phim</label>
            <input type="text" class="form-control" value="<?php echo $row['TenPhim'];?>" id="TenPhim" name="TenPhim" placeholder="Nhập tên phim">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Trạng Thái</label>
            <div class="mb-3">
                <select id="TrangThai" name="TrangThai" value="<?php echo $row['TrangThai'];?>" class="form-select" required aria-label="select example" style="width: 100%">
                    <option value="" selected disabled>Chọn trạng thái</option>
                    <option value="0">Phim Sắp Chiếu</option>
                    <option value="1">Phim Đang Chiếu</option>
                    <option value="2">Phim Ngưng Chiếu</option>
                </select>
            </div>
        </div>
        
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Diễn Viên</label>
            <input type="text" class="form-control" id="DienVien" name="DienVien" value="<?php echo $row['DienVien'];?>" placeholder="Nhập tên các diễn viên">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Đạo Diễn</label>
            <input type="text" class="form-control" id="DaoDien" name="DaoDien" value="<?php echo $row['DaoDien'];?>" placeholder="Nhập tên đạo diễn">
        </div>

        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Thời Lượng</label>
            <input type="text" class="form-control" id="ThoiLuong" name="ThoiLuong" value="<?php echo $row['ThoiLuong'];?>" placeholder="Nhập thời lượng phim">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Ngôn Ngữ</label>
            <input type="text" class="form-control" id="NgonNgu" name="NgonNgu" value="<?php echo $row['NgonNgu'];?>" placeholder="Ngôn ngữ phim là gì?">
        </div>

        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Trailer</label>
            <input type="text" class="form-control" id="Trailer" name="Trailer" value="<?php echo $row['Trailer'];?>" placeholder="Gắn link trailer bộ phim">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Độ Tuổi</label>
            <input type="text" class="form-control" id="DoTuoi" name="DoTuoi" value="<?php echo $row['DoTuoi'];?>"placeholder="Độ tuổi được phép xem phim">
        </div>

        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Mô Tả</label>
            <input type="text" class="form-control" id="MoTa" name="MoTa" value="<?php echo $row['MoTa'];?>" placeholder="Nhập mô tả phim">
        </div>
    
        <button type="submit" name="editphim" class="btn btn-primary">Lưu</button>
    </form>
    </div>
    

</body>
<!--THÀNH VIÊN NHÓM -->
<div style="background-color: #fff7eb;" class="py-5">
    <div class="container py-5">
        <div class="row mb-4">
        <div class="col-lg-5">
            <h2 class="display-4 font-weight-light">Our team</h2>
            <p class="font-italic text-muted">Website had built by us.</p>
        </div>
        </div>

        <div class="row text-center">
       <!-- Nguyễn-->
       <div class="col-xl-4 col-sm-6 mb-5">
            <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556834132/avatar-4_ozhrib.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
            <h5 class="mb-0">Nguyễn Gia Nguyễn</h5><span class="small text-uppercase text-muted">52000851</span>
            <ul class="social mb-0 list-inline mt-3">
                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
            </ul>
            </div>
        </div>
        <!-- End-->

        <!-- Bảo-->
        <div class="col-xl-4 col-sm-6 mb-5">
            <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://res.cloudinary.com/mhmd/image/upload/v1556834130/avatar-3_hzlize.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
            <h5 class="mb-0">Thái Gia Bảo</h5><span class="small text-uppercase text-muted">52000014</span>
            <ul class="social mb-0 list-inline mt-3">
                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
            </ul>
            </div>
        </div>
        <!-- End-->

        </div>
    </div>
    </div>

    <!-- footer-->
    <footer style="background-color: #fff7eb;" class="pb-5">
    <div class="container text-center">
        <p class="font-italic text-muted mb-0">&copy; CÔNG TY TNHH BTH VIETNAM.</p>
        <p class="font-italic text-muted mb-0"> Địa Chỉ: Số 19, Nguyễn Hữu Thọ, P.Tân Phong, Q.7, TPHCM.</p>
        <p class="font-italic text-muted mb-0"> Hotline: 1900 6017.</p>
        <p class="font-italic text-muted mb-0"> COPYRIGHT 2017 CJ CGV. All RIGHTS RESERVED .</p>
    </div>
    </footer>
</html>

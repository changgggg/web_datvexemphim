<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cinema Admin</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/style.css">
    <script src="myscript.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body {
            background-image: url();
        }
    </style>
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
    <?php
        include'./config.php';
        $result = mysqli_query($conn,"SELECT * FROM datve");
        mysqli_close($conn);
    ?>

    <div style="padding: 50px; height: 120vh">
    <h1 style="text-align: center;">DANH SÁCH VÉ ĐÃ ĐẶT</h1><br>
    <div class="table-responsive" style="border: 1px;">
            <table class="table table-striped b-t b-light">
                <tr>
                    <th>STT</th>
                    <th>Tên Phim</th>
                    <th>Tên KH</th>
                    <th>Ngày xem</th>
                    <th>Giờ</th>
                    <th>Cụm rạp</th>
                    <th>Rạp</th>
                    <th>Danh sách ghế</th>
                    <th>Tổng tiền</th>
                    <th>Ngày đặt</th>
                </tr>

                <?php
                    $i = 1;
                    include'./config.php';
                    $result = mysqli_query($conn,"SELECT * FROM datve");
                    while($tmp = $result->fetch_assoc()) {
                        $id_LC = $tmp['id_lichchieu'];
                        $id_KH = $tmp['id_KH'];
                        $result2 = mysqli_query($conn,"SELECT * FROM lichchieu where id = $id_LC");
                        $tmp2 = $result2->fetch_assoc();
                        $result3 = mysqli_query($conn,"SELECT * FROM account where id = $id_KH");
                        $tmp3 = $result3->fetch_assoc()
                ?>

                <tr>
                    <th style="font-weight: 100;"><?=$i?></th>
                    <th style="font-weight: 100;"><?=$tmp2['TenPhim']?></th>
                    <th style="font-weight: 100;"><?=$tmp3['username']?></th>
                    <th style="font-weight: 100;"><?=$tmp2['Ngay']?></th>
                    <th style="font-weight: 100;"><?=$tmp2['Gio']?></th>
                    <th style="font-weight: 100;"><?=$tmp2['TenCum']?></th>
                    <th style="font-weight: 100;"><?=$tmp2['TenRap']?></th>
                    <th style="font-weight: 100;"><?=$tmp['Ghe']?></th>
                    <th style="font-weight: 100;"><?=number_format($tmp['TongTien'])?> VNĐ</th>
                    <th style="font-weight: 100;"><?=$tmp['NgayDat']?></th>
      
                </tr>

                <?php $i++; } ?>
                
            </table>
    </div>
    </div>




</body>

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
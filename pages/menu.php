<?php
            $sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
            $query_danhmuc = mysqli_query($mysqli,$sql_danhmuc);
            ?>
<div class="menu">
    <ul class="list-menu">
        <li><a href="index.php">Trang chủ</a></li>
        <?php
        while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
        ?>
        <li><a href="index.php?Quanly=danhmucsanpham&id=<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></a></li>
        <?php
        }
        ?>
        <li><a href="index.php?Quanly=giohang">Giỏ hàng</a></li>
        <li><a href="index.php?Quanly=tintuc">Tin tức</a></li>
        <li><a href="index.php?Quanly=lienlac">Liên lạc</a></li>
    </ul>
</div>
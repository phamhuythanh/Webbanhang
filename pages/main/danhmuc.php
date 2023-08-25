<?php
            $sql_pro = "SELECT * FROM tbl_danhmuc, tbl_sanpham WHERE tbl_sanpham.id_danhmuc = tbl_danhmuc.id_danhmuc 
            AND tbl_sanpham.id_danhmuc = '$_GET[id]' ORDER BY tbl_sanpham.id_sanpham DESC";
            $query_pro = mysqli_query($mysqli,$sql_pro);
            $row_title= mysqli_fetch_array($query_pro);
        ?>
<h3>Sản phẩm mới nhất : <?php 
                if($row_title)
                {
                    echo $row_title['tendanhmuc'];
                }
                else{
                    echo "Hiện tại chưa có sản phẩm";
                }
                ?></h3>
                <ul class="product_list">
                    <?php 
                        while($row_pro = mysqli_fetch_array($query_pro))
                        {
                    ?>
                    <li>
                        <img src="images/Aonu.jpg">
                        <a href="#">
                        <p class="title_product">Tên sản phẩm : Quần áo nữ </p>
                        <p class="price_product">Giá : 500000 VND</p>
                        </a>
                    </li>
                    <?php 
                    }
                    ?>
                </ul>
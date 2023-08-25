<div id="main">
            <?php            
                include("pages/sidebar/sidebar.php");
            ?>
            <div class="main-content">
                <?php
                    if(isset($_GET['Quanly']))
                    {
                        $tam = $_GET['Quanly'];
                    }
                    else
                    {
                        $tam = '';
                    }
                    switch($tam)
                    {
                        case 'danhmucsanpham': include("main/danhmuc.php");
                        break;
                        case 'giohang': include("main/giohang.php");
                        break;
                        case 'tintuc': include("main/tintuc.php");
                        break;
                        case 'lienlac': include("main/lienlac.php");
                        break;
                        default: include("main/index.php");
                    }
                    // if($tam == 'danhmucsanpham')
                    // {
                    //     include("main/danhmuc.php");
                    // }
                    // else if($tam == 'giohang')
                    // {
                    //     include("main/giohang.php");
                    // }
                    // else if($tam == 'tintuc')
                    // {
                    //     include("main/tintuc.php");
                    // }
                    // else
                    // {
                    //     include("main/index.php");
                    // }
                ?>
            </div>
</div>
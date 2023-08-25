<div class="clear"></div>
<div class="main">
    <?php
    if(isset($_GET['action']) && $_GET['query'])
    {
        $tam = $_GET['action'];
        $query = $_GET['query'];
    }
    else
    {
        $tam = '';
        $query = '';
    }
    // if($tam = 'quanlydanhmucsanpham' && $query=='them')
    // {
    //     include("modules/quanlydanhmucsp/them.php");
    //     include("modules/quanlydanhmucsp/lietke.php");
    // }
    // else if($tam= 'quanlydanhmucsanpham' && $query=='sua')
    // {
    //     include("modules/quanlydanhmucsp/sua.php");
    // }
    // else if($tam = 'quanlysanpham' && $query=='them')
    // {
    //     include("modules/quanlysp/them.php");
    //     include("modules/quanlysp/lietke.php");
    // }
    // else if($tam = 'quanlysanpham' && $query=='sua')
    // {
    //     include("modules/quanlysp/sua.php");
    // }
    // else
    // {
    //     include("modules/dashboard.php");
    // }
    switch($tam)
    {
        case 'quanlydanhmucsanpham':
            if($query=='them')
            {
                include("modules/quanlydanhmucsp/them.php");
                include("modules/quanlydanhmucsp/lietke.php");
            }
            else
            {
                include("modules/quanlydanhmucsp/sua.php");
            }
        break;
        case 'quanlysp':
            if($query=='them')
            {
                include("modules/quanlysp/them.php");
                include("modules/quanlysp/lietke.php");
            }
            else
            {
                include("modules/quanlysp/sua.php");
            }
        break;
        default : include("modules/dashboard.php");
    }
    ?>
</div>
<p>Sửa danh mục sản phẩm</p>
<?php
    $sql_sua_danhmucsp = "SELECT * FROM tbl_danhmuc WHERE id_danhmuc = '$_GET[iddanhmuc]' LIMIT 1";
    $query_sua_danhmucsp = mysqli_query($mysqli,$sql_sua_danhmucsp);
?>
<p>Sửa danh mục sản phẩm</p>
<table border="1" width="50%" style="border-collapse: collapse;">
  <form method="POST" action="modules/quanlydanhmucsp/xuly.php?iddanhmuc=<?php echo $_GET['iddanhmuc']; ?>">
    <?php 
      while($col = mysqli_fetch_array($query_sua_danhmucsp))
      {
    ?>
    <tr>
        <td>Tên danh mục </td>
        <td><input type="text" name="tendanhmuc" value="<?php echo $col['tendanhmuc']; ?>"/></td>
    </tr>
    <tr>
        <td>Thứ tự</td>
        <td><input type="text" name="thutu" value="<?php echo $col['thutu']; ?>"/></td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center;"><input type="submit" name="suadanhmuc" value="Sửa danh mục sản phẩm" /></td>
    </tr>
    <?php
      }
      ?>
  </form>
</table>
<?php
session_start();
require_once('../inc-db.php');
$id=$_GET['id'];
$sql="select * from materi where materi_id='".$id."'";
//echo $sql; exit;

$result=mysql_query($sql);
$data=mysql_fetch_array($result);
?>
<br>
<a href="../logout.php">logout</a> | <a href="../materi/show-data.php">Kembali</a>
<h2><?php echo $data['materi_judul']; ?></h2>
<br>
<?php
$sql_pengguna="SELECT *
FROM
    gupon.materi
    INNER JOIN gupon.diskusi 
        ON (materi.materi_id = diskusi.materi_id)
    INNER JOIN gupon.pengguna 
        ON (pengguna.pengguna_id = diskusi.pengguna_id) WHERE    materi.materi_id='".$id."' ORDER BY diskusi_id ASC";
 $result_pengguna=mysql_query($sql_pengguna);
 while ($data_pengguna=mysql_fetch_array($result_pengguna)) {
 
echo "User :".$data_pengguna['pengguna_nama']."";
if($data_pengguna['pengguna_session'] == $id_session){
    echo "<b style='color: blue;'> ONLINE</b>";
}else{
    echo "<b style='color: red;'> OFLINE</b>";
}
echo "<br><b>".$data_pengguna['pengguna_level']."</b><br>";
echo "Pesan :".$data_pengguna['diskusi']."<br>";

 	# code...
 }

?>

<form method="post" action="">
	<input type="hidden" name="materi_id" value="<?php echo $id ?>">
	Komen <textarea name="diskusi"></textarea>
	<input type="submit" name="kirim" value="Kirim">
</form>


<?php
if(!empty($_POST['kirim'])){
$id_pengguna=$_SESSION['pengguna_id'];
$id_materi=$_POST['materi_id'];
$var_diskusi=$_POST['diskusi'];

$sql="insert into diskusi values ('','$id_pengguna','$id_materi','$var_diskusi')";

//echo $sql; exit;
$result=mysql_query($sql);
echo("<META HTTP-EQUIV=Refresh CONTENT=\"0.1;URL=diskusi.php?id=$id\">");
}
?>

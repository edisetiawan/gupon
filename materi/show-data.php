<?php
session_start();
require_once('../inc-db.php');

?>
<table border="1">
<tr><td>No</td><td>Judul Materi</td><td>Action</td></tr>
<?php
$sql="select * from materi";
$result=mysql_query($sql);
$no=0;
while ($data=mysql_fetch_array($result)) {
	$no++;
	?>
<tr>
	<td><?php echo $no;?></td>
	<td><?php echo $data['materi_judul'];?></td>
	<td><a href="../diskusi/diskusi.php?id=<?php echo $data['materi_id']; ?>">detail</a></td></tr>
	<?php

}
?>

</table>
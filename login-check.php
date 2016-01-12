<?php
include('inc-db.php');
$username=$_POST['username'];
$password=$_POST['password'];

$sql_check="select * from pengguna where 
			pengguna_username='".$username."'";

$result = mysql_query($sql_check);

$getUser = mysql_num_rows($result);

//print_r($getUser); die();
$getDataUser = mysql_fetch_array($result);
if ($getUser === 1) 
{
	

	if (password_verify($password,$getDataUser['pengguna_password'])) 
	{
		session_start();
		$id_session=session_id();
		$_SESSION['pengguna_id']=$getDataUser['pengguna_id'];
        	$update="update pengguna set pengguna_session='".$id_session."' where pengguna_id='".$_SESSION['pengguna_id']."'";
        	//echo $update; 
        	//exit;
		 $result=mysql_query($update);
		header('location: admin_area.php');
		//echo "Is Valid User";
	}
	else
	{
		echo "Invalid User";
	}	
	

}
else
{
	echo "Invalid User";
}


?>

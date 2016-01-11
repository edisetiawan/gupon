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
		$_SESSION['pengguna_id']=$getDataUser['pengguna_id'];
		//$_SESSION['username']=$getDataUser['pengguna_username'];
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
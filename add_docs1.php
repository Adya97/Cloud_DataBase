<header>
	<?php include 'user_header.php'?>
</header>

<article style='padding:50px;'>

<?php
	session_start();

	include 'includes/db.php';
	
	$uid = $_SESSION['uid'];

	$target_dir = "$uid/";
	$target_file = $target_dir . basename($_FILES["path"]["name"]);
	move_uploaded_file($_FILES["path"]["tmp_name"], $target_file);

	$did = $_POST['did'];
	$update = $_POST['update'];

	pg_query($con, "insert into documents values($did,'$target_file','$update','$uid',0)");
?>
<h1>Document uploaded successfully.</h1>

</article>

<footer>
	<?php include 'footer.php'?>
</footer>

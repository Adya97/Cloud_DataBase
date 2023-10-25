<header>
	<?php include 'user_header.php'?>
</header>

<article style='padding:50px;'>

<?php
	include 'includes/db.php';

	$did = $_POST['did'];
	$capans = $_POST['capans'];
	$capvalue = $_POST['capvalue'];

	if($capans == $capvalue)
	{
		$rs = pg_query($con, "select doc_path from documents where doc_id=$did");
		$row = pg_fetch_row($rs);
?>
Click <a href='<?php echo $row[0]?>' download>here</a> to download file.
<?php
	} 
	else
	{
?>
<h2>Verification failed.</h2>
<?php
	}
?>

</article>

<footer>
	<?php include 'footer.php'?>
</footer>

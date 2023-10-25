<?php
	$host = "localhost";
	$dbname = "cloud";
	$port = 5432;
	$user = "postgres";

	$con = pg_connect("host=$host dbname=$dbname port=$port user=$user") or die("Failed to connect");
?>

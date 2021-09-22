<?php
	$hostname = 'mars.cs.qc.cuny.edu';
	
	// creates way to access file 
	$filename = "secret.txt";
	
	// opens file
	$handle = fopen($filename, "r");

	// reads file content
	$contents = fread($handle, filesize($filename));
	
	// delimits array based upon specified character
	$details = explode(';', $contents);
	
	// assigns values to be passed to mysqli function
	$username = trim($details[0]);
	$password = trim($details[1]);
	$dbname = trim($details[0]);
	
	fclose($handle);
	
	// sets up a new connection to database using hostname etc. 
	$con = new mysqli($hostname,$username,$password,$dbname);
	
	// check if theres a connection error. 
	if($con -> connect_errno){
		trigger_error('Database connecion failed: ' . $con->connect_error);
		exit();
	}
?>
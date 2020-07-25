<?php
require_once 'db_connect.php';

if($_POST){
	$species=$_POST["species"];
	$category=$_POST["category"];
	$name=$_POST["name"];
	$zipcode=$_POST["zipcode"];
	$city=$_POST["city"];
	$address=$_POST["address"];
	$image=$_POST["image"];
	$description=$_POST["description"];
	$hobbies=$_POST["hobbies"];
	$website=$_POST["website"];
	$age=$_POST["age"];
	$available_date=$_POST["available_date"];

	

	$sql="INSERT INTO `animals`(`species`,`category`, `name`, `zipcode`,`city`,`address`,`image`,`description`,`hobbies`,`website`,`age`,`available_date`) 
	      VALUES ('$species','$category', '$name', '$zipcode,'$city','$address','$image','$description','$hobbies','$website',$age,'$available_date')";

	if(mysqli_query($conn, $sql)){
		echo "success <br>
		<a href='../admin.php'>Back to the media list page</a>
		";
	}else{
		echo "error";
	};
};

?>
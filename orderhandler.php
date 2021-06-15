<?php
session_start();
include('part/connect.php');

$total=$_POST['total'];

$phone=$_POST['phone'];

$name=$_POST['name'];
$lastname=$_POST['lastname'];
$address=$_POST['address'];
$payment=$_POST['payment'];

$sql="INSERT INTO orders(name,lastname, address, phone, total, pay_method) VAlUES('$name','$lastname','$address','$phone','$total', '$payment')";
$connect->query($sql);


$sql2="Select id from orders order by id DESC limit 1";
$result=$connect->query($sql2);
$final=$result->fetch_assoc();
$orderid=$final['id'];



foreach ($_SESSION['cart'] as $key => $value) {
	$proid=$value['item_id'];
	$quantity=$value['quantity'];


	$sql3="INSERT Into order_details(order_id,product_id,quantity) VAlUES('$orderid','$proid','$quantity')";
	$connect->query($sql3);
	# code...
}
if ($payment=="paypal") {
	$_SESSION['total']=$total;
	header('location: paypal.php');
}else{
	echo "<script> alert('ORDER IS PLACED');
		
		</script>";
}
unset($_SESSION['cart']);

?>
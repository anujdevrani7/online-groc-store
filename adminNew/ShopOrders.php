<?php
session_start();
include_once("config.php");
$current_url = urlencode($url=$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
if(!(isset($_SESSION['adminUser'])))
{
			header("location:index.php");		
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Welcome to online Grocery Shop</title>
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!-- Fontawesome core CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!--Slide Show Css -->
    <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
    <!-- custom CSS here -->
    <link href="assets/css/style.css" rel="stylesheet" />
	 <link rel="stylesheet" href="csst/normalize.css">
        <link rel="stylesheet" href="csst/style.css">
</head>
<body>
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php"><strong>Online</strong> Grocery Shop</a>
            </div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
					<li><a href="index.php?logout=1">Logout</a></li>
					<li><a href="updateProduct.php">Update Existing Product</a></li>
					<li><a href="addProduct.php">Add Product</a></li>
					<li><a href="ShopDetails.php">Shop Details</a></li>
				</ul>
			</div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
	
	
	<!-- View Cart Box Start -->

    <div class="container">
      <h2>
		Shop Details
      </h2>
      <table class="rules">
        <thead>
          <tr>
            <th>
              S. NO.
            </th>
            <th>
              Customer Name
            </th>
            <th>
              Product Name
            </th>
			<th>
              Shop Name
            </th>
			<th>
              Order Quantity
            </th>
			<th>
              Order Price
            </th>
			<th>
              Order Date
            </th>
          </tr>
        </thead>
		<tbody>

<?php
/* $total=0;
$user="anon_user";
	if(isset($_SESSION['loginUser']))
	{
		$user=$_SESSION['loginUser'];
	} */
//$dbc=mysqli_connect("localhost","root","","online_groc") or die("Error connecting sql server");
$results = $mysqli->query("SELECT * FROM shop_order
");
if($results){ 
//echo '<pre>'; print_r($results); die;
//fetch results set as object and output HTML
//while($obj = $results->fetch_object()){
	
	//if($obj->Username==$user){
	//echo '<pre>'; print_r($obj); die;
		$RowCount = 1;
		foreach($results as $obj => $shpDtl){
			//echo '<pre>'; print_r($shpDtl); die;
			$orderdate = $shpDtl['date'];
			$CustName = $shpDtl['username'];
			$ProductName = $shpDtl['product_name'];
			$shopname = $shpDtl['shop_name'];
			$orderQty = $shpDtl['quantity'];
			$orderPrc = $shpDtl['price'];
		?>
			
			<tr class="record">
				<td><?php echo $RowCount; ?></td>
				<td><?php echo $CustName; ?></td>
				<td><?php echo $ProductName; ?></td>
				<td><?php echo $shopname; ?></td>
				<td><?php echo $orderQty; ?></td>
				<td><?php echo $orderPrc; ?></td>
				<td><?php echo $orderdate; ?></td>
			</tr>
			
			
		<?php $RowCount++; }?>
		
<?php }
?>    
</tbody> 
<tfoot>
          
        </tfoot>  
</table>
</div>
	
            <!--Footer -->
    <!-- /.col -->
    <div class="col-md-12 end-box ">
        &copy; 2021 | &nbsp; All Rights Reserved | &nbsp; www.onlinegroceries.com | &nbsp; 24x7 support | &nbsp; Email:onlinegrocery@gmail.com
    </div>
    <!-- /.col -->
    <!--Footer end -->
    <!--Core JavaScript file  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!--bootstrap JavaScript file  -->
    <script src="assets/js/bootstrap.js"></script>
    <!--Slider JavaScript file  -->
    <script src="assets/ItemSlider/js/modernizr.custom.63321.js"></script>
    <script src="assets/ItemSlider/js/jquery.catslider.js"></script>
    <script>
        $(function () {

            $('#mi-slider').catslider();

        });
		</script>

<!-- Products List End -->
</body>
</html>
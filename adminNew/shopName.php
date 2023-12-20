<?php
session_start();
include("config.php");
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
                <a class="navbar-brand" href="#"><strong>Grocery</strong> Shop</a>
            </div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                <ul class="nav navbar-nav navbar-right">
					<li><a href="index.php?logout=1">Logout</a></li>
					<li><a href="updateProduct.php">Update Existing Product</a></li>
		</ul>
	</div>
            <!-- Collect the nav links, forms, and other content for toggling -->
        </div>
        <!-- /.container-fluid -->
    </nav>
	<!-- View Cart Box Start -->

    <div class="container">
      <h2>
		Your Orders
      </h2>
      <table class="rules">
        <thead>
          <tr>
            <th>
              Order Id
            </th>
            <th>
              Total Amount
            </th>
			<th>
              Delivery Address
            </th>
          </tr>
        </thead>
		<tbody>
<?php $results = $mysqli->query("SELECT * FROM userorders");
if($results){ 

//fetch results set as object and output HTML
while($obj = $results->fetch_object())
{	
echo "
		
			<tr class=\"record\"> 
			
            <td class=\"overflow\">
			<a href=\"bill.php?orderNo={$obj->orderId}\">
			{$obj->orderId}
			</a>
            </td>
			<td class=\"overflow\">
            {$obj->totalAmount}
            </td>
			<td class=\"overflow\">
            {$obj->Address}
            </td>
			
			</tr>
			"
			;
	}
?>	
	
	
	
            </div>
	</div>
	</body>
	</html>

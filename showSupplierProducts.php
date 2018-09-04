<!--Saima Naz and Dalee Kumawat-->
<?php
session_start();
if($_SESSION["admin"]==" ")
{
?>
<script type="text/javascript">
window.location="admin_login.php";
</script>
<?php
}

?>
<?php
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"shoestore");
?>
      <html>
	   <head>
		<meta charset="UTF-8">
		<title>shoestore</title>
		 <link rel="stylesheet" href="foundation.css" />
    <script src="modernizr.js"></script>
     <!--<link rel="stylesheet" type="text/css" href="style.css"> -->
		<style></style>
	</head>
	  <body>
        <div class="grid_10">
            <div class="box round first">
                <h2>
                   Product details</h2>
                <div class="block">
					<table border="2">
					<thead>
						<th>S.No.</th>
						<th>Title</th>
						<th>Price</th>
						<th>Description</th>
						<th>Keywords</th>
						<th>Quantity</th>
						<th>Category</th>
						<th>Brand</th>
					</thead>
					<tbody>
					<?php
						$username = $_GET['username'];
						$query = "SELECT categories.cat_title, brands.brand_title, products.product_title, products.product_price, products.product_desc, products.product_keywords, products.product_quantity FROM products, categories, brands WHERE products.supplier_username = '".$username."' AND products.product_cat = categories.cat_id AND products.product_brand = brands.brand_id";
						$rows = mysqli_query($link,$query);
						//echo $query;
						$i = 1;
						while($row = mysqli_fetch_array($rows)) {
							echo '<tr><td>'.$i++.'</td>';
							echo '<td>'.$row["product_title"].'</td>';
							echo '<td>'.$row['product_price'].'</td>';
							echo '<td>'.$row["product_desc"].'</td>';
							echo '<td>'.$row["product_keywords"].'</td>';
							echo '<td>'.$row["product_quantity"].'</td>';
							echo '<td>'.$row["cat_title"].'</td>';
							echo '<td>'.$row["brand_title"].'</td>';
							echo '</tr>';
						}

					?>
					</tbody>
					</table>
                </div>
            </div>
  
    
</body>	
</html>
     

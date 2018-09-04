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
                   View Suppliers</h2>
                <div class="block">
					<table border="2">
					<thead>
						<th>S.No.</th>
						<th>Supplier username</th>
						<th>View</th>
					</thead>
					<tbody>
						<?php
							$query = "SELECT username FROM supplier_login";
							$rows = mysqli_query($link,$query);
							$i = 1;
							while($row = mysqli_fetch_array($rows)) {
								echo "<tr>";
								echo "<td>";
								echo $i++;
								echo '</td>';
								echo '<td>';
								echo $row["username"].'</td>';
								echo '<td><a href="showSupplierProducts.php?username='.$row["username"].'">View</a></td>';
								echo '</tr>';
							}
						?>
						
					</tbody>
					</table>
                </div>
            </div>
  
    
</body>	
</html>
     

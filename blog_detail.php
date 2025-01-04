<?php
	include('database/dbconn.php');
	if (isset($_GET['id'])) {
		$id = intval($_GET['id']);
		$sql = "SELECT * FROM blogs WHERE id = $id";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$row = $result->fetch_assoc();
		} else {
			die("Không tìm thấy bài viết này.");
		}
	} else {
		die("ID bài viết không hợp lệ.");
	}
	?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo htmlspecialchars($row['headline']); ?></title>
	<link rel="icon" href="img/logo.jpg" />
	<link rel = "stylesheet" type = "text/css" href="css/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/carousel.js"></script>
	<script src="js/button.js"></script>
	<script src="js/dropdown.js"></script>
	<script src="js/tab.js"></script>
	<script src="js/tooltip.js"></script>
	<script src="js/popover.js"></script>
	<script src="js/collapse.js"></script>
	<script src="js/modal.js"></script>
	<script src="js/scrollspy.js"></script>
	<script src="js/alert.js"></script>
	<script src="js/transition.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div id="header">
		<img src="img/logo.jpg">
		<label>Online Shoe Store</label>
			<ul>
				<li><a href="#signup"   data-toggle="modal">Sign Up</a></li>
				<li><a href="#login"   data-toggle="modal">Login</a></li>
			</ul>
	</div>

	<div id="login" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:400px;">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
				<h3 id="myModalLabel">Login...</h3>
			</div>
				<div class="modal-body">
					<form method="post">
					<center>
						<input type="email" name="email" placeholder="Email" style="width:250px;">
						<input type="password" name="password" placeholder="Password" style="width:250px;">
					</center>
				</div>
			<div class="modal-footer">
				<input class="btn btn-primary" type="submit" name="login" value="Login">
				<button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
					</form>
			</div>
		</div>

	<div id="signup" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:700px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
					<h3 id="myModalLabel">Sign Up Here...</h3>
				</div>
					<div class="modal-body">
						<center>
					<form method="post">
						<input type="text" name="firstname" placeholder="Firstname" required>
						<input type="text" name="mi" placeholder="Middle Initial" maxlength="1" required>
						<input type="text" name="lastname" placeholder="Lastname" required>
						<input type="text" name="address" placeholder="Address" style="width:430px;"required>
						<input type="text" name="country" placeholder="Province" required>
						<input type="text" name="zipcode" placeholder="ZIP Code" required maxlength="4">
						<input type="text" name="mobile" placeholder="Mobile Number" maxlength="11">
						<input type="text" name="telephone" placeholder="Telephone Number" maxlength="8">
						<input type="email" name="email" placeholder="Email" required>
						<input type="password" name="password" placeholder="Password" required>
						</center>
					</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-primary" name="signup" value="Sign Up">
					<button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
				</div>
					</form>
			</div>

	<br>
<div id="container">
	<div class="nav">
			 <ul>
				<li><a href="index.php"><i class="icon-home"></i>Home</a></li>
				<li><a href="product.php"><i class="icon-th-list"></i>Product</a></li>
				<li><a href="aboutus.php"><i class="icon-bookmark"></i>About Us</a></li>
				<li><a href="contactus.php"><i class="icon-inbox"></i>Contact Us</a></li>
				<li><a href="blogs.php"><i class="icon-list-alt"></i>Blog</a></li>
				<li><a href="privacy.php"><i class="icon-info-sign"></i>Privacy Policy</a></li>
				<li><a href="faqs.php"><i class="icon-question-sign"></i>FAQs</a></li>
			</ul>
	</div>
	<div id="carousel" style="width:1150px; height:270px; border:1px solid #000; margin-bottom:40px; ">
        <div id="myCarousel" class="carousel slide" style="width:1150px; height:250px;">
            <div class="carousel-inner">
                <div class="active item"><img src="img/banner2.jpg" style="width:1150px; height:250px;" class="carousel"></div>
                <div class="item"><img src="img/banner1.jpg" style="width:1150px; height:250px;" class="carousel"></div>
                <div class="item"><img src="img/banner3.jpg" style="width:1150px; height:250px;" class="carousel"></div>
            </div>
            <a class="carousel-control left" href="#myCarousel" style="margin-top:10px;" data-slide="prev">&lsaquo;</a>
            <a class="carousel-control right" href="#myCarousel" style="margin-top:10px;" data-slide="next">&rsaquo;</a>
        </div>
    </div>
	<br />
	<br />

	<div id="blogs">
	<div id="container" style="margin: 0 auto; padding: 20px;">
		<h1 style="text-align: center; font-size: 36px; font-weight: bold; margin-bottom: 20px;">
			<?php echo htmlspecialchars($row['headline']); ?>
		</h1>
		<img src="<?php echo htmlspecialchars($row['picture']); ?>" alt="<?php echo htmlspecialchars($row['headline']); ?>" style="width: 100%; height: auto; margin-bottom: 20px;">
		<div style="text-align: center; font-size: 18px; font-style: italic; font-weight: bold; margin-bottom: 30px;">
			By <?php echo htmlspecialchars($row['author']); ?> on <?php echo htmlspecialchars($row['date']); ?>
		</div>
		<p style="text-align: justify; font-size: 20px; line-height: 1.6; margin: 0 100px;">
			<?php echo nl2br(htmlspecialchars($row['contents'])); ?>
		</p>
	</div>

    </div>

</div>
	<br />
	<div id="footer">
		<div class="foot">
			<label style="font-size:17px;"> Copyrght &copy; </label>
			<p style="font-size:25px;">Online Shoe Store Inc. 2017 Brought To You by <a href="https://code-projects.org/">Code-Projects</a></p>
		</div>

			<div id="foot">
				<h4>Links</h4>
					<ul>
						<a href="http://www.facebook.com/OnlineShoeStore"><li>Facebook</li></a>
						<a href="http://www.twitter.com/OnlineShoeStore"><li>Twitter</li></a>
						<a href="http://www.pinterest.com/OnlineShoeStore"><li>Pinterest</li></a>
						<a href="http://www.tumblr.com/OnlineShoeStore"><li>Tumblr</li></a>
					</ul>
			</div>
	</div>
</body>
</html>

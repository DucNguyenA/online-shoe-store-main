<?php
	include('database/dbconn.php');
	include("function/login.php");
	include("function/customer_signup.php");

	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		$headline = $_POST['headline'];
		$author = $_POST['author'];
		$summary = $_POST['summary'];
		$date = $_POST['date'];
		$contents = $_POST['contents'];
		$picture = $_POST['picture'];

		$sql = "INSERT INTO blogs (headline, author, summary, date, contents, picture) 
				VALUES ('$headline', '$author', '$summary', '$date', '$contents', '$picture')";
		if ($conn->query($sql) === TRUE) {
			echo "<script>alert('Bài viết đã được thêm thành công!');</script>";
		} else {
			echo "<script>alert('Lỗi: " . $conn->error . "');</script>";
		}
	}
	$sql = "SELECT * FROM blogs ORDER BY date DESC";
	$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Online Shoe Store</title>
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
        <h1>BLOGS</h1>
        <div id="content">
            <legend><h3>Newest</h3></legend>
            <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
					echo "
					<a href='blog_detail.php?id={$row['id']}' style='text-decoration: none; color: inherit;'>
						<div class='blog-item' style='display: flex; align-items: center; cursor: pointer;'>
							<img src='{$row['picture']}' alt='{$row['headline']}' style='width: 300px; height: 200px;'>
							<div style='margin-left: 20px;'>
								<h2>{$row['headline']}</h2>
								<p style='font-size: 20px; margin-bottom: 20px;'>{$row['summary']}</p>
								<p style='margin-right: 0px;'><small>By {$row['author']} on {$row['date']}</small></p>
							</div>
						</div>
					</a>
					";
				}
            } else {
                echo "<p>Không có bài viết nào.</p>";
            }
            ?>
        </div>
    </div>

    <div id="add-more-blog">
        <h2>Thêm Blog Mới</h2>
        <form method="POST" action="">
            <table>
                <tr>
                    <td>Headline :</td>
                    <td><input type="text" name="headline" required></td>
                </tr>
                <tr>
                    <td>Author :</td>
                    <td><input type="text" name="author" required></td>
                </tr>
                <tr>
                    <td>Summary :</td>
                    <td><textarea name="summary" required></textarea></td>
                </tr>
                <tr>
                    <td>Date :</td>
                    <td><input type="date" name="date" required></td>
                </tr>
                <tr>
                    <td>Contents :</td>
                    <td><textarea name="contents" required></textarea></td>
                </tr>
                <tr>
                    <td>Picture URL :</td>
                    <td><input type="text" name="picture" required></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>
        </form>
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

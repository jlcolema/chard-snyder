<?php

	define('BASE_URL', '/static/');

	define('ROOT_PATH', $_SERVER['DOCUMENT_ROOT'] . '/static/');

?>

<?php include (ROOT_PATH . 'inc/head.php'); ?>

<body id="" class="">

	<?php include (ROOT_PATH . 'inc/login.php'); ?>

	<?php include (ROOT_PATH . 'inc/header.php'); ?>

	<div id="breadcrumbs">

		<div class="wrap">

			<a href="<?php echo BASE_URL; ?>">Home</a> <span class="">&rsaquo;</span>

			<a href="<?php echo BASE_URL; ?>support-center/">Support Center</a> <span class="">&rsaquo;</span>

			<a href="<?php echo BASE_URL; ?>support-center/videos/">Videos</a> <span class="">&rsaquo;</span>

			This is the title of a video that will display here and continue to multiple lines as needed

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1 class="with-rule">Video Entry</h1>

				<div class="summary">

					<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>

				</div>

				<div class="video">

					<iframe src="https://player.vimeo.com/video/151579457?title=0&byline=0" width="900" height="506" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

				</div>

				<p>Donec id elit non mi porta gravida at eget metus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>

				<div class="still-have-questions">

					<h2>Still Have Questions?</h2>

					<p>If we have not answered your questions, don’t worry. Please contact customer service for more information.</p>

					<div class="more">

						<a href="/about/contact/">Contact Us</a>

					</div>

				</div>

			</div>

			<div id="right-sidebar">

				<div class="category-nav">

					<div class="title">

						Filter by Category

					</div>

					<div class="">

						<div class="toggle">

							<span>Menu</span>

						</div>

						<ul>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/videos/category.php">FSA</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/videos/category.php">HRA</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/videos/category.php">HSA</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/videos/category.php">Transportation &amp; Parking</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/videos/category.php">Prepaid Benefits Card</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/videos/category.php">Plan Document Services</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/videos/category.php">COBRA / CS Marketplace</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/videos/category.php">Retiree Billing</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/videos/category.php">Family Medical Leave Act (FMLA)</a>

							</li>

						</ul>

					</div>

				</div>

			</div>

		</div>

	</main>

	<?php include (ROOT_PATH . 'inc/footer.php'); ?>

<?php include (ROOT_PATH . 'inc/scripts.php'); ?>
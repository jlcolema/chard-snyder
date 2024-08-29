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

			About

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>About</h1>

				<div class="summary">

					<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>

				</div>

				<img src="<?php echo BASE_URL; ?>m/image-example.jpg" alt="Description of image." />

				<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Flexible Spending Accounts (FSAs) are part of an IRS regulated, employer-sponsored benefit plan that allows participants to voluntarily convert part of their compensation into tax-free benefits. Contributions made through FSAs are normally free of federal, state and Social Security taxes. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Etiam porta sem malesuada magna mollis sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nullam quis risus eget urna mollis ornare vel eu leo.</p>

				<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Etiam porta sem malesuada magna mollis euismod. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>

			</div>

			<div id="left-sidebar">

				<div class="secondary-nav">

					<div class="section">

						About

					</div>

					<div class="nav">

						<div class="toggle">

							<span>Menu</span>

						</div>

						<ul>

							<li>

								<a href="<?php echo BASE_URL; ?>about/our-leadership/">Our Leadership</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>about/careers/">Careers</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>about/news-and-events/">News &amp; Events</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>about/industry-partners.php">Industry Partners</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>about/community-involvement.php">Community Involvement</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>about/testimonials.php">Testimonials</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>about/contact/">Contact</a>

							</li>

						</ul>

					</div>

				</div>

				<div class="support-center">

					<a href="<?php echo BASE_URL; ?>support-center/">Visit the Support Center</a>

				</div>

			</div>

		</div>

	</main>

	<?php include (ROOT_PATH . 'inc/footer.php'); ?>

<?php include (ROOT_PATH . 'inc/scripts.php'); ?>
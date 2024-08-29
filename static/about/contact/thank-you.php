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

			<a href="<?php echo BASE_URL; ?>about/">About</a> <span class="">&rsaquo;</span>

			<a href="<?php echo BASE_URL; ?>about/contact/">Contact</a> <span class="">&rsaquo;</span>

			Thank You

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Thank You</h1>

				<p>Content goes here&hellip;</p>

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

							<li class="current">

								<a href="<?php echo BASE_URL; ?>about/contact/" class="active">Contact</a>

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
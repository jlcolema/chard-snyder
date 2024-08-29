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

			<a href="<?php echo BASE_URL; ?>about/our-leadership/">Our Leadership</a> <span class="">&rsaquo;</span>

			Joy Snyder

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Joy Snyder</h1>

				<h2 class="bio-title">Title will display here</h2>

				<div class="bio-photo">

					<picture>

						<!--[ if IE 9 ]>

							<video style="display: none;">

						<![ endif ]-->

							<source srcset="http://placehold.it/250x250" media="(min-width: 600px)">

							<source srcset="http://placehold.it/600x600">

						<!--[ if IE 9 ]>

							</video>

						<![ endif ]-->

						<img srcset="http://placehold.it/600x600" alt="A very nice description." />

					</picture>

				</div>

				<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing ae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra avel scelerisque nisl consectetur et. Cras justo odio, dapibus ac facilisis inegestas eget quam. Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>

				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec sed odio dui. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean lacinia bibendum nulla sed consectetur. Nulla vitae elit libero, a pharetra augue.</p>

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

							<li class="current">

								<a href="<?php echo BASE_URL; ?>about/our-leadership/">Our Leadership</a>

								<ul class="submenu">

									<li>

										<a href="<?php echo BASE_URL; ?>about/our-leadership/entry.php">Ken Chard</a>

									</li>

									<li>

										<a href="<?php echo BASE_URL; ?>about/our-leadership/entry.php" class="active">Joy Snyder</a>

									</li>

									<li>

										<a href="<?php echo BASE_URL; ?>about/our-leadership/entry.php">John Gutzwiller</a>

									</li>

									<li>

										<a href="<?php echo BASE_URL; ?>about/our-leadership/entry.php">Jodi Graham</a>

									</li>

									<li>

										<a href="<?php echo BASE_URL; ?>about/our-leadership/entry.php">Barb Yearout</a>

									</li>

								</ul>

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
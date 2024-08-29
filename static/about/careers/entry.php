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

			<a href="<?php echo BASE_URL; ?>about/careers/">Careers</a> <span class="">&rsaquo;</span>

			Title of the Job Post will Display Here

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Title of the Job Post will Display Here</h1>

				<div class="summary">

					<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>

				</div>

				<p>This is a description of the job post volupta tiusant. Aquidebit offictotat et laccull atempori omni sincium derrovi tasitasit, si dolorerspe maiorum harum qui vero eaquam, am fuga. Ut inctur aut lame dolorem olorepudicil esequi dit, coreper ibusapiet voloraeperum et aliaeptas parum, offic totatius. Vestibulum id ligula porta felis euismod semper. Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Donec ullamcorper nulla non metus auctor fringilla. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo.</p>

				<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas faucibus mollis interdum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Maecenas sed diam eget risus varius blandit sit amet non magna. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur.</p>

				<div class="download-application">

					<h2>Ready to Apply?</h2>

					<p>Download and complete the application, then return it to our HR Department and we will be in touch.</p>

					<div class="more">

						<a href="#">Download Application</a>

					</div>

				</div>

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

							<li class="current">

								<a href="<?php echo BASE_URL; ?>about/careers/" class="active">Careers</a>

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
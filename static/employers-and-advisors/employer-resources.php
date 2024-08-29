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

			<a href="<?php echo BASE_URL; ?>employers-and-advisors/">Employers &amp; Advisors</a> <span class="">&rsaquo;</span>

			Employer Resources

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Employer Resources</h1>

				<div class="summary">

					<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>

				</div>

				<p>Content goes here&hellip;</p>

			</div>

			<div id="left-sidebar">

				<div class="secondary-nav">

					<div class="section">

						Employers &amp; Advisors

					</div>

					<div class="nav">

						<div class="toggle">

							<span>Menu</span>

						</div>

						<ul>

							<li>

								<a href="<?php echo BASE_URL; ?>employers-and-advisors/our-difference.php">Our Difference</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>employers-and-advisors/our-plans-and-services.php">Our Plans &amp; Services</a>

							</li>

							<li class="current">

								<a href="<?php echo BASE_URL; ?>employers-and-advisors/employer-resources.php" class="active">Employer Resources</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>employers-and-advisors/request-a-proposal/">Request a Proposal</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>employers-and-advisors/request-a-demo/">Request a Demo</a>

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
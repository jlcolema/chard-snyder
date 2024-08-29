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

			<a href="<?php echo BASE_URL; ?>benefits/">Benefits</a> <span class="">&rsaquo;</span>

			<a href="<?php echo BASE_URL; ?>benefits/cobra-and-billing/">Cobra and Billing</a> <span class="">&rsaquo;</span>

			Chard Snyder Marketplace

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Chard Snyder Marketplace</h1>

				<div class="summary">

					<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>

				</div>

				<p>Content goes here&hellip;</p>

			</div>

			<div id="left-sidebar">

				<div class="secondary-nav">

					<div class="section">

						Benefits

					</div>

					<div class="nav">

						<div class="toggle">

							<span>Menu</span>

						</div>

						<ul>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/flexible-spending-account/">Flexible Spending Account (FSA)</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/health-reimbursement-arrangement/">Health Reimbursement Arrangement (HRA)</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/health-savings-account/">Health Savings Account (HSA)</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/transportation-and-parking/">Transportation &amp; Parking (TRP)</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/prepaid-benefits-card.php">Prepaid Benefits Card</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/plan-document-services/">Plan Document Services</a>

							</li>

							<li class="current">

								<a href="<?php echo BASE_URL; ?>benefits/cobra-and-billing/">COBRA &amp; Billing</a>

								<ul class="submenu">

									<li>

										<a href="<?php echo BASE_URL; ?>benefits/cobra-and-billing/cobra-information-and-resources.php">COBRA Information &amp; Resources</a>

									</li>

									<li>

										<a href="<?php echo BASE_URL; ?>benefits/cobra-and-billing/chard-snyder-marketplace.php" class="active">Chard Snyder Marketplace</a>

									</li>

								</ul>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/family-medical-leave-act.php">Family Medical Leave Act (FMLA)</a>

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
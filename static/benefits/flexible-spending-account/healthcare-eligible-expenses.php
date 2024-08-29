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

			<a href="<?php echo BASE_URL; ?>benefits/flexible-spending-account/">Flexible Spending Account (FSA)</a> <span class="">&rsaquo;</span>

			Healthcare Eligible Expenses

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Healthcare Eligible Expenses</h1>

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

							<li class="parent-active has-children">

								<a href="<?php echo BASE_URL; ?>benefits/flexible-spending-account/">

									<span>Flexible Spending Account (FSA)</span>

								</a>

								<ul>

									<li class="active">

										<a href="<?php echo BASE_URL; ?>benefits/flexible-spending-account/healthcare-eligible-expenses.php">

											<span>Healthcare Eligible Expenses</span>

										</a>

									</li>

									<li>

										<a href="<?php echo BASE_URL; ?>benefits/flexible-spending-account/dependent-daycare-eligible-expenses.php">

											<span>Dependent Daycare Eligible Expenses</span>

										</a>

									</li>

									<li>

										<a href="<?php echo BASE_URL; ?>benefits/flexible-spending-account/limited-eligible-expenses.php">

											<span>Limited Eligible Expenses</span>

										</a>

									</li>

									<li>

										<a href="https://www.fsastore.com/" rel="external">

											<span>FSA Store</span>

										</a>

									</li>

								</ul>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/health-reimbursement-arrangement/">

									<span>Health Reimbursement Arrangement (HRA)</span>

								</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/health-savings-account/">

									<span>Health Savings Account (HSA)</span>

								</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/transportation-and-parking/">

									<span>Transportation &amp; Parking (TRP)</span>

								</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/prepaid-benefits-card.php">

									<span>Prepaid Benefits Card</span>

								</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/plan-document-services/">

									<span>Plan Document Services</span>

								</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/cobra-and-billing/">

									<span>COBRA &amp; Billing</span>

								</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>benefits/family-medical-leave-act.php">

									<span>Family Medical Leave Act (FMLA)</span>

								</a>

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
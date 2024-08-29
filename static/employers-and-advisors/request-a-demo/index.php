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

			Request a Demo

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Request a Demo</h1>

				<div class="summary">

					<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>

				</div>

				<p>Etiam porta sem malesuada magna mollis sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue.</p>

				<div class="have-questions">

					<h2>Questions? Call our Sales Team</h2>

					<div>8am – 9pm ET Monday – Friday</div>

					<div>800-982-7715</div>

				</div>

				<div class="form">

					<form>

						<fieldset>

							<ul>

								<li>

									<label>Name</label>

									<input type="text" />

								</li>

								<li>

									<label>Email</label>

									<input type="email" />

								</li>

								<li>

									<label>Phone</label>

									<input type="tel" />

								</li>

								<li>

									<label>Company Name</label>

									<input type="text" />

								</li>

								<li>

									<label>Number of Eligible Employees</label>

									<input type="text" />

								</li>

							</ul>

						</fieldset>

						<fieldset>

							<legend>Employer Demonstrations</legend>

							<ul>

								<li>

									<label>

										<input type="checkbox" /> Employer Portal

									</label>

								</li>

							</ul>

						</fieldset>

						<fieldset>

							<legend>Participant Portal Demonstrations</legend>

							<ul>

								<li>

									<label>

										<input type="checkbox" /> HRA

									</label>

								</li>

								<li>

									<label>

										<input type="checkbox" /> HSA

									</label>

								</li>

								<li>

									<label>

										<input type="checkbox" /> HSA &amp; Limited FSA

									</label>

								</li>

								<li>

									<label>

										<input type="checkbox" /> FSA &amp; HRA

									</label>

								</li>

								<li>

									<label>

										<input type="checkbox" /> HRA, HSA, Limited FSA, Dependent Care &amp; TRP

									</label>

								</li>

							</ul>

						</fieldset>

						<fieldset>

							<ul>

								<li>

									<label>Additional Information</label>

									<textarea></textarea>

								</li>

							</ul>

						</fieldset>

						<button type="submit">Send</button>

					</form>

				</div>

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

							<li>

								<a href="<?php echo BASE_URL; ?>employers-and-advisors/employer-resources.php">Employer Resources</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>employers-and-advisors/request-a-proposal/">Request a Proposal</a>

							</li>

							<li class="current">

								<a href="<?php echo BASE_URL; ?>employers-and-advisors/request-a-demo/" class="active">Request a Demo</a>

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
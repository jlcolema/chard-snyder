<?php

	define('BASE_URL', '/static/');

	define('ROOT_PATH', $_SERVER['DOCUMENT_ROOT'] . '/static/');

?>

<?php include (ROOT_PATH . 'inc/head.php'); ?>

<body id="home" class="">

	<?php include (ROOT_PATH . 'inc/login.php'); ?>

	<?php include (ROOT_PATH . 'inc/header.php'); ?>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<div class="hero">

					<picture>

						<!--[ if IE 9 ]>

							<video style="display: none;">

						<![ endif ]-->

							<!--

								Image Sizes Available:

								1800px x 703px

								1600px x 625px

								1400px x 547px

								100% = 1280px x 500px

							-->

							<source srcset="<?php echo BASE_URL; ?>m/hero-example.jpg" media="(min-width: 1800px)">

							<source srcset="<?php echo BASE_URL; ?>m/hero-example.jpg" media="(min-width: 1600px)">

							<source srcset="<?php echo BASE_URL; ?>m/hero-example.jpg" media="(min-width: 1400px)">

							<source srcset="<?php echo BASE_URL; ?>m/hero-example.jpg" media="(min-width: 1280px)">

							<source srcset="<?php echo BASE_URL; ?>m/hero-example.jpg">

						<!--[ if IE 9 ]>

							</video>

						<![ endif ]-->

						<img srcset="<?php echo BASE_URL; ?>m/hero-example.jpg" alt="A very nice description." />

					</picture>

				</div>

				<div class="mission">

					<h1>Your tomorrow, today.</h1>

					<div class="statement">

						<p>Chard Snyder is a leading third party administrator (TPA) of employee benefits plans.  Founded in 1988, we provide customized benefit solutions that meet the needs of organizations nationwide in an increasingly complex environment. Our remarkable team of dedicated individuals is passionate, personal, reliable and committed to great customer service.</p>

					</div>

				</div>

				<div class="spending-and-savings-accounts-highlight">

					<div class="slideshow">

						<div class="flexslider">

							<ul class="slides">

								<li>

									<picture>

										<!--[ if IE 9 ]>

											<video style="display: none;">

										<![ endif ]-->

											<!--

												Available Image Sizes:

												1000px x 625px

												800px x 500px

												100% = 640px x 400px;

											-->

											<source srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg" media="(min-width: 1000px)">

											<source srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg" media="(min-width: 800px)">

											<source srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg">

										<!--[ if IE 9 ]>

											</video>

										<![ endif ]-->

										<img srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg" alt="A very nice description." />

									</picture>

								</li>

								<li>

									<picture>

										<!--[ if IE 9 ]>

											<video style="display: none;">

										<![ endif ]-->

											<!--

												Available Image Sizes:

												1000px x 625px

												800px x 500px

												100% = 640px x 400px;

											-->

											<source srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg" media="(min-width: 1000px)">

											<source srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg" media="(min-width: 800px)">

											<source srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg">

										<!--[ if IE 9 ]>

											</video>

										<![ endif ]-->

										<img srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg" alt="A very nice description." />

									</picture>

								</li>

								<li>

									<picture>

										<!--[ if IE 9 ]>

											<video style="display: none;">

										<![ endif ]-->

											<!--

												Available Image Sizes:

												1000px x 625px

												800px x 500px

												100% = 640px x 400px;

											-->

											<source srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg" media="(min-width: 1000px)">

											<source srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg" media="(min-width: 800px)">

											<source srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg">

										<!--[ if IE 9 ]>

											</video>

										<![ endif ]-->

										<img srcset="<?php echo BASE_URL; ?>m/spending-and-savings-accounts-highlight-example.jpg" alt="A very nice description." />

									</picture>

								</li>

							</ul>

						</div>

					</div>

					<div class="overview">

						<h2>Spending &amp; Savings Accounts</h2>

						<div class="detail">

							<p>Flexible Spending Accounts (FSAs) are part of an IRS regulated, employer-sponsored benefit plan that allows participants to voluntarily convert part of their compensation into tax-free benefits. Contributions made through FSAs are normally free of federal, state and Social Security taxes.</p>

						</div>

						<div class="more-information">

							<ul>

								<li>

									<a href="#">Plan Information</a>

								</li>

								<li>

									<a href="#">Common Questions</a>

								</li>

							</ul>

						</div>

					</div>

				</div>

				<div class="customer-service-highlight">

					<div class="tabs">

						<ul>

							<li class="active">Employees</li>

							<li>Employers &amp; Advisors</li>

						</ul>

					</div>

					<div class="panels">

						<div class="panel active">

							<div class="detail">

								<div class="overview">

									<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec sed odio dui. Sed posuere consectetur est at lobortis. interdum.</p>

								</div>

								<div class="more-information">

									<ul>

										<li>

											<a href="#">Benefits</a>

										</li>

										<li>

											<a href="#">Support Center</a>

										</li>

									</ul>

								</div>

							</div>

							<div class="customer-service-options">

								<div class="options">

									<div class="type">

										Customer Service, Savings &amp; Spending Accounts

										<div>800-982-7715</div>

									</div>

									<div class="type">

										Customer Service, Benefit Continuation Services

										888-993-4646

									</div>

								</div>

							</div>

						</div>

						<div class="panel">

							<div class="detail">

								<div class="overview">

									<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec sed odio dui. Sed posuere consectetur est at lobortis. interdum.</p>

								</div>

								<div class="more-information">

									<ul>

										<li>

											<a href="#">Benefits</a>

										</li>

										<li>

											<a href="#">Support Center</a>

										</li>

									</ul>

								</div>

							</div>

							<div class="customer-service">

								<div class="options">

									<div class="type">

										Customer Service, Savings &amp; Spending Accounts

										<div>800-982-7715</div>

									</div>

									<div class="type">

										Customer Service, Benefit Continuation Services

										<div>888-993-4646</div>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

				<div class="industries-highlight">

					<h2>Industries</h2>

					<div class="overview">

						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae elit libero, a pharetra augue.</p>

					</div>

					<div class="listing">

						<ul>

							<li class="industry colleges-and-universities">Colleges &amp; Universities</li>

							<li class="industry healthcare">Healthcare</li>

							<li class="industry bank-and-financial">Bank &amp; Financial</li>

							<li class="industry government">Government</li>

							<li class="industry manufacturing">Manufacturing</li>

						</ul>

					</div>

				</div>

				<div class="testimonial-highlight">

					<div class="quote">

						<blockquote>

							<p>Chard Snyder is nist, ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent. Namentiam et volorrovid quia culluptatur aut aut est quiate pedicabo.</p>

						</blockquote>

					</div>

					<div class="photo">

						<picture>

							<!--[ if IE 9 ]>

								<video style="display: none;">

							<![ endif ]-->

								<!--

									Available Image Sizes:

									800px x 500px

									100% = 640px x 400px;

								-->

								<source srcset="<?php echo BASE_URL; ?>m/testimonial-highlight-example.jpg" media="(min-width: 1000px)">

								<source srcset="<?php echo BASE_URL; ?>m/testimonial-highlight-example.jpg" media="(min-width: 800px)">

								<source srcset="<?php echo BASE_URL; ?>m/testimonial-highlight-example.jpg">

							<!--[ if IE 9 ]>

								</video>

							<![ endif ]-->

							<img srcset="<?php echo BASE_URL; ?>m/testimonial-highlight-example.jpg" alt="A very nice description." />

						</picture>

					</div>

				</div>

			</div>

		</div>

	</main>

	<?php include (ROOT_PATH . 'inc/footer.php'); ?>

<?php include (ROOT_PATH . 'inc/scripts.php'); ?>
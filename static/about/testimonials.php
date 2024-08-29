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

			Testimonials

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Testimonials</h1>

				<div class="summary">

					<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>

				</div>

				<div class="testimonials-paginated-listing">

					<div class="listing">

						<ul>

							<li>

								<blockquote>

									<p>Convincing testimonial will appear here and add credibility to the Chard Snyder brand. It will continue on and provide relevant and helpful information for the user browsing the site.</p>

									<div class="cite">

										<b>Firstname</b>

										<div>Industry | City, State</div>

									</div>

								</blockquote>

							</li>

							<li>

								<blockquote>

									<p>Convincing testimonial will appear here and add credibility to the Chard Snyder brand. It will continue on and provide relevant and helpful information for the user browsing the site.</p>

									<div class="cite">

										<b>Firstname</b>

										<div>Industry | City, State</div>

									</div>

								</blockquote>

							</li>

							<li>

								<blockquote>

									<p>Convincing testimonial will appear here and add credibility to the Chard Snyder brand. It will continue on and provide relevant and helpful information for the user browsing the site.</p>

									<div class="cite">

										<b>Firstname</b>

										<div>Industry | City, State</div>

									</div>

								</blockquote>

							</li>

							<li>

								<blockquote>

									<p>Convincing testimonial will appear here and add credibility to the Chard Snyder brand. It will continue on and provide relevant and helpful information for the user browsing the site.</p>

									<div class="cite">

										<b>Firstname</b>

										<div>Industry | City, State</div>

									</div>

								</blockquote>

							</li>

							<li>

								<blockquote>

									<p>Convincing testimonial will appear here and add credibility to the Chard Snyder brand. It will continue on and provide relevant and helpful information for the user browsing the site.</p>

									<div class="cite">

										<b>Firstname</b>

										<div>Industry | City, State</div>

									</div>

								</blockquote>

							</li>

						</ul>

					</div>

					<div class="pagination">

						<div class="back">

							<a href="#">

								<span class="arrow">&larr;</span> Back

							</a>

						</div>

						<div class="pages">

							<a href="#">1</a>
							<a href="#">2</a>
							<span>3</span>
							<a href="#">4</a>
							<a href="#">5</a>

						</div>

						<div class="next">

							<a href="#">

								Next <span class="arrow">&rarr;</span>

							</a>

						</div>

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

							<li class="current">

								<a href="<?php echo BASE_URL; ?>about/testimonials.php" class="active">Testimonials</a>

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
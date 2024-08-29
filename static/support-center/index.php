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

			Support Center

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Support Center</h1>

				<div class="summary">

					<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>

				</div>

				<div class="support-center-search">

					<form>

						<ul>

							<li>

								<label>Search our Support Center</label>

								<input type="text" placeholder="Search Our Support Center" />

							</li>

							<li>

								<label>Category</label>

								<select>

									<option>All Types</option>
									<option>FAQs</option>
									<option>Videos</option>
									<option>Forms and Resources</option>
									<option>Tool and Apps</option>
									<option>Compliance Watch</option>

								</select>

							</li>

						</ul>

						<button type="submit">Search</button>

					</form>

				</div>

				<div class="categories">

					<ul>

						<li class="category-faqs">

							<a href="<?php echo BASE_URL; ?>support-center/faqs/">

								<h3>FAQs</h3>

								<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing vitae elit libero, a pharetra augue.</p>

							</a>

						</li>

						<li class="category-videos">

							<a href="<?php echo BASE_URL; ?>support-center/videos/">

								<h3>Videos</h3>

								<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing vitae elit libero, a pharetra augue.</p>

							</a>

						</li>

						<li class="category-forms-and-resources">

							<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/">

								<h3>Forms &amp; Resources</h3>

								<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing vitae elit libero, a pharetra augue.</p>

							</a>

						</li>

						<li class="category-tools-and-apps">

							<a href="<?php echo BASE_URL; ?>support-center/tools-and-apps/">

								<h3>Tools &amp; Apps</h3>

								<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing vitae elit libero, a pharetra augue.</p>

							</a>

						</li>

						<li class="category-compliance-watch">

							<a href="<?php echo BASE_URL; ?>support-center/compliance-watch/">

								<h3>Compliance Watch</h3>

								<p>Short description will display here. Lorem ipsum dolor sit amet, consectetur adipiscing vitae elit libero, a pharetra augue.</p>

							</a>

						</li>

					</ul>

				</div>

			</div>

		</div>

	</main>

	<?php include (ROOT_PATH . 'inc/footer.php'); ?>

<?php include (ROOT_PATH . 'inc/scripts.php'); ?>
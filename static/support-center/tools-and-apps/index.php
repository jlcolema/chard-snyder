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

			<a href="<?php echo BASE_URL; ?>support-center/">Support Center</a> <span class="">&rsaquo;</span>

			Tools &amp; Apps

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Tools &amp; Apps</h1>

				<div class="summary">

					<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>

				</div>

				<div class="tools-and-apps-paginated-listing">

					<div class="listing">

						<ul>

							<li>

								<h2>

									<a href="<?php echo BASE_URL; ?>support-center/tools-and-apps/entry.php">Mobile Applications</a>

								</h2>

								<div class="item-summary">

									<p>Description of the page will display here and a user will click to get to the destination page, ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapidusda vid que labore vent. Namentiam et volorrovid quia culluptatur aut aut est quiate pedicabo.</p>

								</div>

								<div class="more">

									<a href="<?php echo BASE_URL; ?>support-center/tools-and-apps/entry.php">

										Read More <span class="arrow">&rarr;</span>

									</a>

								</div>

							</li>

							<li>

								<h2>

									<a href="<?php echo BASE_URL; ?>support-center/tools-and-apps/entry.php">Calculators</a>

								</h2>

								<div class="item-summary">

									<p>Description of the page will display here and a user will click to get to the destination page, ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapidusda vid que labore vent. Namentiam et volorrovid quia culluptatur aut aut est quiate pedicabo.</p>

								</div>

								<div class="more">

									<a href="<?php echo BASE_URL; ?>support-center/tools-and-apps/entry.php">

										Read More <span class="arrow">&rarr;</span>

									</a>

								</div>

							</li>

						</ul>

					</div>

				</div>

			</div>

			<div id="right-sidebar">

				<div class="category-nav">

					<div class="title">

						Filter by Category

					</div>

					<div class="">

						<div class="toggle">

							<span>Menu</span>

						</div>

						<ul>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/tools-and-apps/category.php">Mobile Applications</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/tools-and-apps/category.php">Calculators</a>

							</li>

						</ul>

					</div>

				</div>

			</div>

		</div>

	</main>

	<?php include (ROOT_PATH . 'inc/footer.php'); ?>

<?php include (ROOT_PATH . 'inc/scripts.php'); ?>
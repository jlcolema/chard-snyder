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

			Forms &amp; Resources

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1>Forms &amp; Resources</h1>

				<div class="summary">

					<p>This is an overview of what this page is all about. Chard Snyder is nist ut parchil laccusantem fugit es inimusam acia vello maximus. Atibus ad quam, quo idus, sit que nus ipsapi dusda vid que labore vent.</p>

				</div>

				<div class="support-center-category-search">

					<form>

						<ul>

							<li>

								<label>Search our Search Our Forms &amp; Resources</label>

								<input type="text" placeholder="Search Our Search Our Forms &amp; Resources" />

							</li>

						</ul>

						<button type="submit">Search</button>

					</form>

				</div>

				<div class="forms-and-resources-paginated-listing">

					<div class="listing">

						<ul>

							<li>

								<h2>

									<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/entry.php">The title of each individual form will display here</a>

								</h2>

								<div class="item-summary">

									<p>This is a description of the form and a user will click to get to the download page where they can download the actual form.</p>

								</div>

								<div class="more">

									<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/entry.php">

										Read More <span class="arrow">&rarr;</span>

									</a>

								</div>

							</li>

							<li>

								<h2>

									<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/entry.php">The title of each individual form will display here</a>

								</h2>

								<div class="item-summary">

									<p>This is a description of the form and a user will click to get to the download page where they can download the actual form.</p>

								</div>

								<div class="more">

									<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/entry.php">

										Read More <span class="arrow">&rarr;</span>

									</a>

								</div>

							</li>

							<li>

								<h2>

									<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/entry.php">The title of each individual form will display here</a>

								</h2>

								<div class="item-summary">

									<p>This is a description of the form and a user will click to get to the download page where they can download the actual form.</p>

								</div>

								<div class="more">

									<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/entry.php">

										Read More <span class="arrow">&rarr;</span>

									</a>

								</div>

							</li>

							<li>

								<h2>

									<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/entry.php">The title of each individual form will display here</a>

								</h2>

								<div class="item-summary">

									<p>This is a description of the form and a user will click to get to the download page where they can download the actual form.</p>

								</div>

								<div class="more">

									<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/entry.php">

										Read More <span class="arrow">&rarr;</span>

									</a>

								</div>

							</li>

							<li>

								<h2>

									<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/entry.php">The title of each individual form will display here</a>

								</h2>

								<div class="item-summary">

									<p>This is a description of the form and a user will click to get to the download page where they can download the actual form.</p>

								</div>

								<div class="more">

									<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/entry.php">

										Read More <span class="arrow">&rarr;</span>

									</a>

								</div>

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

								<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/category.php">FSA</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/category.php">HRA</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/category.php">HSA</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/category.php">Transportation &amp; Parking</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/category.php">Plan Document Services</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/category.php">COBRA / CS Marketplace</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/category.php">Retiree Billing</a>

							</li>

							<li>

								<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/category.php">Family Medical Leave Act (FMLA)</a>

							</li>

						</ul>

					</div>

				</div>

			</div>

		</div>

	</main>

	<?php include (ROOT_PATH . 'inc/footer.php'); ?>

<?php include (ROOT_PATH . 'inc/scripts.php'); ?>
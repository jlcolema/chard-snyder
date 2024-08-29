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

			<a href="<?php echo BASE_URL; ?>support-center/forms-and-resources/">Forms &amp; Resources</a> <span class="">&rsaquo;</span>

			The Title of Each Form Will Display Here

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1 class="with-rule">The Title of Each Form Will Display Here</h1>

				<p>This is a description of the form and a user will click to get to the download page where they can download the actual form. Estiis dem. Obitati simostiorum volupta tiusant. Aquidebit offictotat et laccull atempori omni sincium derrovi tasitasit, si dolorerspe maiorum harum qui vero eaquam, am fuga. Ut inctur aut lame dolorem olorepudicil esequi dit, coreper ibusapiet voloraeperum et aliaeptas parum, offic totatius. Um, et laceseq uodipiet am et odi secte voluptatem. Nem ullibus apedici psaepe dolorem etuscia si consequam velliae vellaceatus.</p>

				<div class="download">

					<a href="#">Download</a>

				</div>

				<div class="still-have-questions">

					<h2>Can&rsquo;t locate a form or document?</h2>

					<p>Don&rsquo;t worry. Please contact customer service for assistance.</p>

					<div class="more">

						<a href="/about/contact/">Contact Us</a>

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
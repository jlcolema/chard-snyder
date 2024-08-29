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

			<a href="<?php echo BASE_URL; ?>support-center/tools-and-apps/">Tools &amp; Apps</a> <span class="">&rsaquo;</span>

			Title of Entry

		</div>

	</div>

	<main id="content" role="main">

		<div class="wrap">

			<div class="main">

				<h1 class="with-rule">Mobile Applications</h1>

				<p>This is a description of the form and a user will click to get to the download page where they can download the actual form. Estiis dem. Obitati simostiorum volupta tiusant. Aquidebit offictotat et laccull atempori omni sincium derrovi tasitasit, si dolorerspe maiorum harum qui vero eaquam, am fuga. Ut inctur aut lame dolorem olorepudicil esequi dit, coreper ibusapiet voloraeperum et aliaeptas parum, offic totatius. Um, et laceseq uodipiet am et odi secte voluptatem. Nem ullibus apedici psaepe dolorem etuscia si consequam velliae vellaceatus.</p>

				<!-- App Store Availability -->

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
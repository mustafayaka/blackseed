<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!doctype html>
<html lang="en">
<head>
	<?php $this->load->view('includes/head'); ?>
</head>

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">

		<?php $this->load->view('includes/header'); ?>

		<?php $this->load->view('includes/sidebar'); ?>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">

			<?php $this->load->view('categories/list/breadcrumb'); ?>


		<?php $this->load->view('categories/list/main_content'); ?>

		</div>

		<?php $this->load->view('includes/footer'); ?>
		<?php $this->load->view('categories/list/form'); ?>
	</div>

<?php $this->load->view('includes/include_script'); ?>
	<?php $this->load->view('categories/list/page_script'); ?>
</body>
</html>
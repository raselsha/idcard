<!DOCTYPE html>
<html>
<head>

	<title><?php echo $title; ?></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/main.css">
	<script src="<?php echo base_url(); ?>js/jquery.min.js"></script>
</head>

<body>

	<div class="page">

		<header>
			<div class="logo">
				<a href="<?= base_url(); ?>"><img src="<?= base_url(); ?>images/Id_card_logo.png" >
				<h2>ID Card Generator</h2></a>
			</div>
			<div class="user_info">
				<p><?php 
				if ($this->session->userdata('user_role')==1) :?>
					<small>Logied in as <b>Admin</b></small>
				<?php elseif ($this->session->userdata('user_role')==2): ?>
					<small>Logied in as <b>Manager</b></small>
				<?php endif; ?>
				<?php 
					if ($this->session->userdata('id')) :?>
					<small>| User name : <b><?= $this->session->userdata('user_name') ?></b> | <a href="<?= base_url(); ?>users/change_password">Change password</a></small>
				<?php endif; ?>
				</p>
			</div>
		</header>

		<div class="menu">

		<?php $this->load->view('menu'); ?>

		</div>

		<div class="container">
		
			<?php print $content; ?>

		</div>
		<div class="footer">
			<small style="float:left">copyright &copy; <?= date('Y') ?> all rights reserved.</small>
			<small style="float:right">v 1.0</small>
		</div>

	</div>

</body>

</html>
<?php $this->load->view('alert_message'); ?>
<h2><?php echo $page_title; ?></h2>
<p><a href="<?php echo base_url(); ?>courses/new_course" class="btn">Add new</a></p>

<table cellspacing="0" cellpadding="5" class="table">

<tr>

	<td><b>Course Name</b></td>

	<td><b>Course Code</b></td>

	<td><b>Template</b></td>

	<td><b>Action</b></td>

</tr>

<?php 



	echo '<tr>';

	echo '<td>'.$course->course_name.'</td>';

	echo '<td>'.$course->course_code.'</td>';

	if ($course->template==1) {
		echo '<td>Sky</td>';
	}

	if ($course->template==2) {
		echo '<td>Orange</td>';
	}

	echo '<td><a href="'.base_url().'courses/edit_course/'.$course->id.'" class="edit">Edit</a>';

	echo '<a href="'.base_url().'courses/delete_course/'.$course->id.'" class="delete">Delete</a></td>';

	echo '<tr>';



 ?>

 </table>

<div class="pagination">

	<?= $this->pagination->create_links(); ?>

</div>
<p><?= anchor('courses','Back',['class'=>'btn']) ?></p>
<?php $this->load->view('alert_message'); ?>
<h2><?php echo $page_title; ?></h2>

<p><a href="<?php echo base_url(); ?>batches/new_batch" class="btn">Add new</a></p>

<table cellspacing="0" cellpadding="5">

	<tr>
		<td><b>Batch Id</b></td>

		<td><b>Course Name</b></td>

		<td><b>Shift</b></td>

		<td><b>Status</b></td>

		<td><b>Action</b></td>
	</tr>

<?php 

	echo '<tr>';

	echo '<td><a href="'.base_url().'batches/single_batch/'.$batch->id.'">Batch# '.$batch->id.'</a></td>';

	echo '<td>'.$batch->course_name.' - '.$batch->batch_no.'</td>';

	if ($batch->batch_shift==1) {
		echo '<td>Morning</td>';
	}
	
	elseif ($batch->batch_shift==2) {
		echo '<td>After noon</td>';
	}

	elseif($batch->batch_shift==3) {
		echo '<td>Evenning</td>';
	}

	if ($batch->batch_status==1) {
		echo '<td>Running</td>';
	}

	elseif($batch->batch_status==2) {
		echo '<td class="success">Completed</td>';
	}

	echo '<td><a href="'.base_url().'batches/edit_batch/'.$batch->id.'" class="edit">Edit</a>';

	echo '<a href="'.base_url().'batches/delete_batch/'.$batch->id.'" class="delete">Delete</a></td>';

	echo '<tr>';


 ?>

 </table>

<?php if ($students) : ?>

<h2>Student list of this Batch</h2>
 <table cellspacing="0" cellpadding="5">

 <thead>
 	<th>Sl</th>

 	<th>Name</th>

 	<th>Student Id</th>

 	<th>Mobile</th>

 	<th>Ref</th>

 </thead>

 <?php 

 	$sl=0;

 	foreach ($students as $student) {

 		echo '<tr>';

 		echo '<td>'.++$sl.'</td>';

 		echo '<td><a href="'.base_url().'students/single_student/'.$student->id.'">'.$student->name.'</a></td>';
 		echo '<td>'.$student->student_id.'</td>';
 		echo '<td>'.$student->mobile.'</td>';
 		echo '<td>'.$student->ref.'</td>';

 		echo '<tr>';
 	}

  ?>

  </table>
<?php endif; ?>
 <div class="pagination">

 	<?= $this->pagination->create_links(); ?>

 </div>
<p><?= anchor('batches','Back',['class'=>'btn']) ?></p>
<?php $this->load->view('alert_message'); ?>
<h2><?php echo $page_title; ?></h2>

<form method="post" action="<?php echo base_url();  ?>

batches/save_batch"  >

	<fieldset>

		<legend><?php echo $page_title; ?></legend>

		<table>

				<td><label>Course</label></td>
				<td>
					<select name="batch_course_id" >
						<option value="">Select course</option>
						<?php foreach ($courses as $course):?>
							
							<?php if ($course->id ==set_value('batch_course_id')): ?>
								<option value="<?= $course->id ?>" selected="selected"><?= $course->course_name ?></option>
							<?php else: ?>
								<option value="<?= $course->id ?>"><?= $course->course_name ?></option>
							<?php endif; ?>
							
						<?php endforeach; ?>

					</select>

				</td>
				<td width="59%"><?= form_error('batch_course_id') ?></td>
			</tr>

			<tr>

				<td><label>Shift</label></td>

				<td><select name="batch_shift">
						<option value="">Select shift</option>
						<?php
							if (set_value('batch_shift')==''):?>
								<option value="1">Morning</option>
								<option value="2">After Noon</option>
								<option value="3">Evening</option>
						<?php endif; ?>
						<?php
							if (set_value('batch_shift')==1):?>
								<option value="1" selected>Morning</option>
								<option value="2">After Noon</option>
								<option value="3">Evening</option>
						<?php endif; ?>
						<?php if(set_value('batch_shift')==2): ?>
							<option value="1">Morning</option>
							<option value="2" selected>After Noon</option>
							<option value="3">Evening</option>
						<?php endif; ?>
						<?php if(set_value('batch_shift')==3): ?>
							<option value="1">Morning</option>
							<option value="2">After Noon</option>
							<option value="3" selected>Evening</option>
						<?php endif; ?>						
					</select>
				</td>
				<td><?= form_error('batch_shift'); ?></td>
			</tr>

			<tr>

				<td><label>Status</label></td>

				<td><select name="batch_status">
						<option value="">Select status</option>
						<?php
							if (set_value('batch_status')==''):?>
								<option value="1">Running</option>
								<option value="2">Completed</option>
						<?php endif; ?>
						<?php
							if (set_value('batch_status')==1):?>
								<option value="1" selected>Running</option>
								<option value="2">Completed</option>
						<?php endif; ?>
						<?php
							if (set_value('batch_status')==2):?>
								<option value="1" >Running</option>
								<option value="2" selected>Completed</option>
						<?php endif; ?>
					</select>
				</td>
				<td><?= form_error('batch_status'); ?></td>
			</tr>	

			<tr>

				<td>
					
				</td>
				<td colspan="3"><input type="submit" name="submit" value="submit"></td>

			</tr>

		</table>

	</fieldset>

</form>
<p><?= anchor('batches','Back',['class'=>'btn']) ?></p>



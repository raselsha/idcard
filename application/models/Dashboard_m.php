<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Dashboard_m extends CI_Model
{

	public function search($search)
	{
		$result=$this->db->get_where('students',array('student_id'=>$search))->row();
		if ($result) {
			return $result->id;
		}
		
	}

	// ===================== users===================
	public function save_user()
	{	
		unset($_POST['submit']);
		$_POST['user_name']=strtolower($_POST['user_name']);
		$_POST['user_password']=md5($_POST['user_name']);
		return $this->db->insert('users',$_POST);
	}
	public function users($limit=null,$offset=null)
	{
		return $this->db->get('users',$limit,$offset)->result();
	}
	public function single_user($id)
	{
		return $this->db->get_where('users', array('id' => $id))->row();
	}
	public function edit_user($id)
	{
		return $this->db->get_where('users', array('id' => $id))->row();
	}
	public function update_user($id)
	{	
		unset($_POST['submit']);
		$_POST['user_name']=strtolower($_POST['user_name']);
		$this->db->where('id', $id);
		$this->db->update('users',$_POST);
		$sdata=array();
		$sdata['user_role'] = $_POST['user_role']; 
		$this->session->set_userdata($sdata);
		return 1;
	}
	public function update_password($id)
	{	
		unset($_POST['submit']);
		$_POST['user_password']=md5($_POST['user_password']);
		$this->db->where('id', $id);
		$this->db->update('users',$_POST);
		
		return 1;
	}

	public function delete_user($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('users'); 
		return 1;
	}

	// =====================end users===================
	public function save_course()
	{	
		unset($_POST['submit']);
		return $this->db->insert('courses',$_POST);
	}
	public function courses($limit=null,$offset=null)
	{
		return $this->db->get('courses',$limit,$offset)->result();
	}
	public function single_course($id)
	{
		return $this->db->get_where('courses', array('id' => $id))->row();
	}
	public function edit_course($id)
	{
		return $this->db->get_where('courses', array('id' => $id))->row();
	}
	public function update_course($id)
	{	
		unset($_POST['submit']);
		$check=$this->db->query("select id,course_code from courses where course_code='".$_POST['course_code']."' and id != ".$id)->num_rows();
		if ($check==0) {

			$this->db->where('id', $id);
			$this->db->update('courses',$_POST);
			return 1;
		}
		return 0;

	}
	public function delete_course($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('courses'); 
		return 1;
	}

	// =====================end courses===================
	
	public function save_batch()
	{	

		unset($_POST['submit']);
		$count = $this->db->where('batch_course_id', $_POST['batch_course_id'])
				->from('batches')
				->count_all_results();
		$count = $count+1;
		$_POST['batch_no']= '0'.$count;

		$this->db->insert('batches',$_POST);

		return 1;
	}

	public function batches($limit=null,$offset=null)
	{
		$this->db->select('batches.*')
				 ->select('courses.id as courses_id')
				 ->select('courses.course_name')
				 ->from('batches')
				 ->join('courses', 'batches.batch_course_id = courses.id','left',$limit,$offset)
				 ->order_by('batches.id','desc');
		$query = $this->db->get('',$limit,$offset)->result();

		return $query;
	}

	public function single_batch($id)
	{
		
		$this->db->select('batches.*')
				 ->select('courses.id as courses_id')
				 ->select('courses.course_name')
				 ->from('batches')
				 ->join('courses', 'batches.batch_course_id = courses.id','left')
				 ->where('batches.id',$id);
		$query = $this->db->get()->row();

		return $query;
	}

	
	public function edit_batch($id)
	{
		
		return $this->db->get_where('batches', array('id' => $id))->row();
	}

	public function update_batch($id)
	{	
		unset($_POST['submit']);

		$this->db->where('id', $id);
		$this->db->update('batches',$_POST);
		return 1;


	}

	public function delete_batch($id=null){
		$this->db->where('id', $id);
		$this->db->delete('batches'); 
		return 1;
	}

	public function ajax_batch($course_id)
	{
		$query = $this->db->where(array('batch_course_id' =>  $course_id,'batch_status'=>1))->get('batches');
		return $query->result();
	}
	// =====================end batches===================
	public function save_student()
	{	
		unset($_POST['submit']);
		$_POST['image'] = $_FILES['image']['name'];
		$_POST['ref'] = $this->session->userdata('user_name');
		$check=$this->db->get_where('students', array('student_id' => $_POST['student_id']))->num_rows();
		$name = $_FILES['image']['name'];
		$sp =$_FILES['image']['tmp_name'];

		if ($check==0) {
			$this->db->insert('students',$_POST);
			$id=$this->db->insert_id();

			$data = array();
			$data['student_id']=$_POST['student_id'];
			$data['course_id']= $_POST['course_id'];
			$data['batch_id']= $_POST['batch'];
			$this->db->insert('enrolled',$data);

			$dp ='images/students/'.$id.'_'.$name;
			move_uploaded_file($sp,$dp);
			return 1;
		}
		return 0;
		
	}

	public function students($limit,$offset)
	{
		$this->db->select('students.*')
				 ->select('courses.id as courses_id')
				 ->select('courses.course_name')
				 ->from('students')
				 ->join('courses', 'students.course_id = courses.id','left',$limit,$offset)
				 ->order_by('student_id');
		$query = $this->db->get('',$limit,$offset)->result();

		return $query;
	}


	public function single_student($id)
	{
		
		$this->db->select('students.*')
				 ->select('courses.id as courses_id')
				 ->select('courses.course_name,courses.template')
				 ->from('students')
				 ->join('courses', 'students.course_id = courses.id','left')
				 ->where('students.id',$id);
		$query = $this->db->get()->row();
		
		return $query;
	}

	public function edit_student($id)
	{
		
		return $this->db->get_where('students', array('id' => $id))->row();
	}

	public function delete_student($id=null,$image=null){
		
		$student=$this->db->select('student_id')
				 ->from('students')
				 ->where('id',$id)
				 ->get()
				 ->row();

		$this->db->where('student_id',$student->student_id);
		$this->db->delete('enrolled');

		$this->db->where('id', $id);
		$this->db->delete('students'); 
		$image='images/students/'.$id.'_'.$image->image;
		unlink($image);

		return 1;
	}

	public function update_student($id)
	{	
		unset($_POST['submit']);
		$check=$this->db->query("select id,student_id from students where student_id='".$_POST['student_id']."' and id != ".$id)->num_rows();

		$_POST['image'] = $_FILES['image']['name'];
		$name = $_FILES['image']['name'];
		$sp =$_FILES['image']['tmp_name'];
		
		if ($_FILES['image']['name']==''){
			$_POST['image'] = $_POST['photo'];
			unset($_POST['photo']);
		}
		unset($_POST['photo']);
		if ($check==0) {
			$this->db->where('id', $id);
			$this->db->update('students',$_POST);
			$dp ='images/students/'.$id.'_'.$name;
			move_uploaded_file($sp,$dp);
			return 1;
		}
		return 0;

	}
	// ==================== end student =================
	// ==================== enrolled ===================
	public function save_enroll()
	{	
		unset($_POST['submit']);
		$this->db->insert('enrolled',$_POST);
		return 1;
	}

	public function batch_enrolled($id)
	{
		
		$query = $this->db->select('enrolled.student_id,students.id,students.name,students.mobile,students.ref,')
				 ->from('enrolled')
				 ->where('enrolled.batch_id',$id)
				 ->join('students', 'enrolled.student_id = students.student_id','left')
				 ->get()->result();
		return $query;
	}

	public function student_enrolled($id)
	{	
		$student=$this->db->select('student_id')
				 ->from('students')
				 ->where('id',$id)
				 ->get()
				 ->row();

		$enrolled = $this->db->select('enrolled.*,batches.batch_no,batches.batch_shift,batches.batch_status,courses.course_name')
				 ->from('enrolled')
				 ->where('enrolled.student_id',$student->student_id)
				 ->join('batches', 'enrolled.batch_id = batches.id','left')
				 ->join('courses', 'enrolled.course_id = courses.id','left')
				 ->get()
				 ->result();

		return $enrolled;
	}

	public function find_enroll($student_id)
	{

		$enrolled = $this->db->select('*')
				 ->from('students')
				 ->where('student_id',$student_id)
				 ->get()
				 ->row();
		if ($enrolled) {
			return $enrolled->student_id;
		}
		
	}

	public function delete_enrolled($id,$batch_id)
	{	
		$student=$this->db->select('student_id')
				 ->from('students')
				 ->where('id',$id)
				 ->get()
				 ->row();

		$this->db->where('student_id',$student->student_id);
		$this->db->where('batch_id',$batch_id);
		$this->db->delete('enrolled'); 
		return 1;
	}

	// ==================== end enrolled =================
	public function edit_unique($id,$table,$field)
	{
		$this->db->select($field)
						->from($table)
						->where('id',$id);

		return $this->db->get()->row();
	}

}

 ?>
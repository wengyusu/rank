<?php
class Index_model extends CI_Model {

    public function __construct()
    {
    	$this->load->database();

        parent::__construct();
    }

    public function index(){
    	$query = $this->db->select('*')->from('rank')->order_by('Rank')
		->get();
		return $query->result_array();

    }

    public function top(){
        $query = $this->db->select('*')->from('top')->order_by('Rank')
        ->get();
        return $query->result_array();

    }
    public function rankfull(){
        $query = $this->db->select('*')->from('rankfull')->order_by('Rank')
        ->get();
        return $query->result_array();

    }
}

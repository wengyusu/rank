<?php
class Index extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Index_model');
        $this->load->helper('url');
    }

    public function index(){
		$this->load->view('index');
		

    }

    public function ajax(){
    	$result=$this->Index_model->index();
		// var_dump($result);
		echo $this->json_encode_ex($result);
    }

    public function top(){
        $result=$this->Index_model->top();
        // var_dump($result);
        echo $this->json_encode_ex($result);
    }
    public function rankfull(){
        $result=$this->Index_model->rankfull();
        // var_dump($result);
        echo $this->json_encode_ex($result);
    }
    private function json_encode_ex($value)
{
    if (version_compare(PHP_VERSION,'5.4.0','<'))
    {
        $str = json_encode($value);
        $str = preg_replace_callback(
                                    "#\\\u([0-9a-f]{4})#i",
                                    function($matchs)
                                    {
                                         return iconv('UCS-2BE', 'UTF-8', pack('H4', $matchs[1]));
                                    },
                                     $str
                                    );
        return $str;
    }
    else
    {
        return json_encode($value, JSON_UNESCAPED_UNICODE);
    }
}

}
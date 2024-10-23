<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Front extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        // Load Model เข้ามาใช้งาน
        $this->load->model('UsersModel', 'us', true);
    }

    public function index()
    {
        $data['main_content'] = 'frontend/pages/index';
        $data['title'] = "Home";
        $this->load->view('frontend/templates/default_template', $data);
    }

    public function login()
    {
        $data['main_content'] = 'frontend/pages/login';
        $data['title'] = 'Login';
        $this->load->view('frontend/templates/default_template', $data);
    }

    public function login_process()
    {
        // รับค่าจากฟอร๋ม
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        $result = $this->us->login($email, $password);

        if ($result) {

            // สร้างตัวแปร array ไว้เก็บ session ของ user ที่ล็อกอินเข้ามา
            $sess_array = array();

            foreach ($result as $row) {
                $sess_array = array(
                    'id' => $row->id,
                    'username' => $row->username,
                    'email' => $row->email,
                    'password' => $row->password,
                    'role' => $row->role,
                );
            }

            $this->session->set_userdata('logged_in', $sess_array);
            echo "Login success";
            // ส่งไปหน้า dashboard
            redirect('backend/dashboard', 'refresh');

            // print_r($sess_array);

        } else {
            redirect('front/login', 'refresh');
        }

        

    }
}

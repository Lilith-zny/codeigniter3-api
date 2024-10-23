<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Users extends CI_Controller {

    function __construct()
    {
        parent::__construct();
    }

    // GET METHOD
    
    // http://localhost/codeigniter3/api/v1/users/users_list
    public function users_list(){
        $result = $this->db->select('*')->from('users')->get()->result();

        // print_r($result);
        echo json_encode($result);

    }
    
    // POST METHOD

    // http://localhost/codeigniter3/api/v1/users/users_create
    public function users_create(){
        // รับค่าจาก client
        $inputJSON = file_get_contents('php://input');

        // แปลง JSON เป็น array --->> json_decode() <<---
        $input = json_decode($inputJSON, true);
        // print_r($input);
        // exit();

        $user_data = array(
            'username' => $input['username'],
            'email' => $input['email'],
            'password' => $input['password'],
            'role' => $input['role'],
        );

        $this->db->insert('users', $user_data);

        if($this->db->affected_rows() > 0){
            echo '{"Success":{"text":"Add new user success"}}';
        }else{
            echo '{"Error":{"text":"Add new user fail"}}';

        }
        
    }

    // PUT METHOD

    // http://localhost/codeigniter3/api/v1/users/users_update/1
    public function users_update($id){
         // รับค่าจาก client
         $inputJSON = file_get_contents('php://input');

         // แปลง JSON เป็น array --->> json_decode() <<---
         $input = json_decode($inputJSON, true);

         $where_user_data = array(
            'id' => $id
         );

         $user_data = array(
            'username' => $input['username'],
            'email' => $input['email'],
            'password' => $input['password'],
            'role' => $input['role'],
        );

        $this->db->where($where_user_data);
        $this->db->update('users', $user_data);

        if($this->db->affected_rows() > 0){
            echo '{"Success":{"text":"Update user success"}}';
        }else{
            echo '{"Error":{"text":"Update user fail"}}';

        }
    }

    // DELETE METHOD

    // http://localhost/codeigniter3/api/v1/users/users_delete/1
    public function users_delete($id){
        $where_user_data = array(
            'id' => $id
        );

        $this->db->where($where_user_data);
        $this->db->delete('users');

        if($this->db->affected_rows() > 0){
            echo '{"Success":{"text":"Deleted user success"}}';
        }else{
            echo '{"Error":{"text":"Deleted user fail"}}';

        }

    }

}
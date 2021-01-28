<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu_model extends CI_Model
{
    public function getSubMenu()
    {
        $role_id = $this->session->userdata('role_id');
        $query = "SELECT user_sub_menu.*,user_menu.menu,user_access_menu.role_id FROM user_sub_menu JOIN user_menu ON user_sub_menu.menu_id=user_menu.id JOIN user_access_menu ON user_sub_menu.menu_id=user_access_menu.menu_id WHERE user_access_menu.role_id=$role_id ";
        return $this->db->query($query)->result_array();
    }

    public function getSubMenuById($id)
    {
        return $this->db->get_where('user_sub_menu', ['id' => $id])->row_array();
    }
    public function view_where($table, $data)
    {
        $this->db->where($data);
        return $this->db->get($table);
    }

    
}

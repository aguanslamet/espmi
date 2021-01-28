<?php
defined('BASEPATH') or exit('No direct script access allowed');

class lembaga_model extends CI_Model
{
    public function isilembaga()
    {
        return $this->db->query('isi_manajemenrefensi');
    }
}

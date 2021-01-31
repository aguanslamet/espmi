<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Halaman extends CI_Controller
{
    public function index()
    {


        $this->load->view('Tampilan/index');
        $this->load->view('Tampilan/halaman');
        $this->load->view('Tampilan/sidebar');
        $this->load->view('Tampilan/footer');
    }
    public function detail()
    {

        $query = $this->db->get_where('manajemen_refrensi',);
        $row = $query->row_array();
        $data['rows'] = $row;
        $this->load->view('Tampilan/index');
        $this->load->view('Tampilan/halaman', $data);
        $this->load->view('Tampilan/sidebar');
        $this->load->view('Tampilan/footer');
    }
}

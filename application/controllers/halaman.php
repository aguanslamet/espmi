<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Halaman extends CI_Controller
{
    public function index()
    {


        $this->load->view('halaman/index');
        $this->load->view('halaman/utama');
        $this->load->view('halaman/sidebar');
        $this->load->view('halaman/footer');
    }
    public function detail()
    {

        $query = $this->db->get_where('isi_manajemenrefensi', array('link_seo' => $this->uri->segment(3)));
        $row = $query->row_array();
        $data['rows'] = $row;

        $this->load->view('halaman/index');
        $this->load->view('halaman/halaman', $data);
        $this->load->view('halaman/sidebar');
        $this->load->view('halaman/footer');
    }
    public function Download($id)
    {
        $post = $this->db->get_where('file_mr', ['id' => $id])->row_array();
        $name = $this->uri->segment(3);
        $data = file_get_contents("asset/file/pendukung/" . $name);
        force_download($name, $data);
    }
}

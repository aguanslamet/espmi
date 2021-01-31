<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Halaman extends CI_Controller
{
    public function index()
    {


        $query =  $this->db->get_where('manajemen_refrensi', ['link_seo' => "E-SPMI"]);
        $row = $query->row_array();
        $data['rows'] = $row;

        $this->load->view('halaman/index');
        $this->load->view('halaman/utama', $data);
        $this->load->view('halaman/sidebar');
        $this->load->view('halaman/footer');
    }
    public function detail()
    {

        $query = $this->db->get_where('manajemen_refrensi', array('link_seo' => $this->uri->segment(3)));
        $row = $query->row_array();
        $data['rows'] = $row;

        $this->load->view('halaman/index');
        $this->load->view('halaman/halaman', $data);
        $this->load->view('halaman/sidebar');
        $this->load->view('halaman/footer');
    }
    public function Download($id)
    {
        $post = $this->db->get_where('dokumen_pendukung', ['id' => $id])->row_array();
        $name = $this->uri->segment(3);
        $data = file_get_contents("asset/file/pendukung/" . $name);
        force_download($name, $data);
    }
}

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MR extends CI_Controller
{


    public function index()
    {
        $data['title'] = 'Halaman Lembaga';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->load->model('lembaga_model', 'lembaga');
        $this->db->order_by("kode_mr", "ASC");
        $query = $this->db->get_where('manajemen_refrensi');
        $row = $query->result_array();
        $data['rows'] = $row;


        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('MR/isilembaga', $data);
        $this->load->view('template/footer');
    }

    public function tambahlembaga()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['post'] = $this->db->get('manajemen_refrensi')->result_array();

        $data['title'] = 'Tambah Lembaga';

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');


        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('MR/tambahlembaga', $data);
            $this->load->view('template/footer');
        } else {

            $data = [

                'kode_mr' => $this->input->post('kode_mr'),
                'nama' => $this->input->post('nama'),
                'link_seo' => url_title($this->input->post('nama'), 'dash', TRUE),
                'image' => '',
                'deskripsi' => $this->input->post('deskripsi'),
                'tgl_upload' => time()
            ];

            $this->db->insert('manajemen_refrensi', $data);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">data baru telah ditambah</div>');
            redirect('MR');
        }
    }


    public function editlembaga($kode_mr)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['post'] = $this->db->get_where('manajemen_refrensi', ['kode_mr' => $kode_mr])->row_array();

        $data['title'] = 'Edit lembaga';

        $this->form_validation->set_rules('deskripsi', 'deskripsi', 'required');


        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('MR/editlembaga', $data);
            $this->load->view('template/footer');
        } else {

            $kode_mr = $this->input->post('kode_mr');
            $judul = $this->input->post('nama');
            $link_seo = url_title($this->input->post('link_seo'), 'dash', TRUE);
            $isi = $this->input->post('deskripsi');
            $upload_image = $_FILES['image']['name'];


            if ($upload_image) {
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size'] = '2048';
                $config['upload_path'] = './assets/img/isi/';

                $this->load->library('upload', $config);

                if (!$this->upload->do_upload('image')) {
                    echo $this->upload->display_errors();
                    die();
                } else {
                    $upload_image = $this->upload->data('file_name');

                    if ($data['manajemen_refrensi']['image'] != "") {
                        unlink('./assets/img/isi/' . $data['manajemen_refrensi']['image']);
                    }

                    $data = [

                        'kode_mr' => $this->input->post('kode_mr'),
                        'link_seo' => url_title($this->input->post('nama'), 'dash', TRUE),
                        'nama' => $this->input->post('nama'),
                        'deskripsi' => $this->input->post('deskripsi'),
                        'image' => $upload_image,
                    ];

                    $this->db->where('kode_mr', $kode_mr);
                    $this->db->update('manajemen_refrensi', $data);
                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil ditambah!</div>');
                    redirect('MR');
                }
            }

            $data = [

                'kode_mr' => $this->input->post('kode_mr'),
                'nama' => $this->input->post('nama'),
                'link_seo' => url_title($this->input->post('nama'), 'dash', TRUE),
                'deskripsi' => $this->input->post('deskripsi'),

            ];

            $this->db->where('kode_mr', $kode_mr);
            $this->db->update('manajemen_refrensi', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Post has been updated!</div>');
            redirect('MR');
        }
    }

    public function hapuslembaga($kode_mr)
    {
        $post = $this->db->get_where('manajemen_refrensi', ['kode_mr' => $kode_mr])->row_array();

        if ($post['image'] != "") {
            unlink('./assets/img/isi/' . $post['image']);
        }

        $this->db->where('kode_mr', $kode_mr);
        $this->db->delete('manajemen_refrensi');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Telah di Hapus!</div>');
        redirect('MR');
    }

    public function filemr()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $query = $this->db->get_where('dokumen_pendukung');
        $row = $query->result_array();
        $data['rows'] = $row;

        $data['title'] = 'Dokumen pendukung';

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('MR/docmr', $data);
        $this->load->view('template/footer');
    }

    public function tambahfilemr()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['doc'] = $this->db->get('dokumen_pendukung')->result_array();
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('kode_mr', 'Kode_mr', 'required');

        $data['title'] = 'Tambah dokumen';

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('MR/tambahdocmr', $data);
            $this->load->view('template/footer');
        } else {

            $upload_file = $_FILES['file'];

            if ($upload_file) {
                $config['allowed_types'] = 'pdf|doc|docx';
                $config['upload_path'] = './assets/file/pendukung/';

                $this->load->library('upload', $config);

                if (!$this->upload->do_upload('file')) {
                    echo $this->upload->display_errors();
                    die();
                } else {
                    $data = [
                        'id' => $this->input->post('id'),
                        'nama' => $this->input->post('nama'),
                        'file' => $this->upload->data('file_name'),
                        'kode_mr' => $this->input->post('kode_mr')
                    ];

                    $this->db->insert('dokumen_pendukung', $data);

                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New Post Added!</div>');
                    redirect('MR/filemr');
                }
            }
        }
    }

    public function hapusfilemr($id)
    {
        $post = $this->db->get_where('dokumen_pendukung', ['id' => $id])->row_array();

        if ($post['file'] != "") {
            unlink('./assets/file/pendukung/' . $post['file']);
        }

        $this->db->where('id', $id);
        $this->db->delete('dokumen_pendukung');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Telah di Hapus!</div>');
        redirect('MR/filemr');
    }
}

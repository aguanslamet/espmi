<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MR extends CI_Controller
{


    public function index()
    {
        $data['title'] = 'Halaman Lembaga';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->load->model('lembaga_model', 'lembaga');
        $this->db->order_by("id", "ASC");
        $query = $this->db->get_where('isi_manajemenrefensi');
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

        $data['post'] = $this->db->get('isi_manajemenrefensi')->result_array();

        $data['title'] = 'Tambah Lembaga';

        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('isi', 'isi', 'required');


        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('MR/tambahlembaga', $data);
            $this->load->view('template/footer');
        } else {

            $data = [

                'judul' => $this->input->post('judul'),
                'link_seo' => url_title($this->input->post('judul'), 'dash', TRUE),
                'image' => '',
                'isi' => $this->input->post('isi'),
                'tgl_upload' => time()
            ];

            $this->db->insert('isi_manajemenrefensi', $data);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">data baru telah ditambah</div>');
            redirect('MR');
        }
    }


    public function editlembaga($id)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['post'] = $this->db->get_where('isi_manajemenrefensi', ['id' => $id])->row_array();

        $data['title'] = 'Edit lembaga';

        $this->form_validation->set_rules('isi', 'Isi', 'required');


        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('MR/editlembaga', $data);
            $this->load->view('template/footer');
        } else {
            $id = $this->input->post('id');
            $judul = $this->input->post('judul');
            $link_seo = url_title($this->input->post('link_seo'), 'dash', TRUE);
            $isi = $this->input->post('isi');
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

                    if ($data['isi_manajemenrefensi']['image'] != "") {
                        unlink('./assets/img/isi/' . $data['isi_manajemenrefensi']['image']);
                    }

                    $data = [
                        'id' => $this->input->post('id'),
                        'link_seo' => url_title($this->input->post('judul'), 'dash', TRUE),
                        'judul' => $this->input->post('judul'),
                        'isi' => $this->input->post('isi'),
                        'image' => $upload_image,
                    ];

                    $this->db->where('id', $id);
                    $this->db->update('isi_manajemenrefensi', $data);
                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil ditambah!</div>');
                    redirect('MR');
                }
            }

            $data = [
                'id' => $this->input->post('id'),
                'judul' => $this->input->post('judul'),
                'link_seo' => url_title($this->input->post('judul'), 'dash', TRUE),
                'isi' => $this->input->post('isi'),

            ];

            $this->db->where('id', $id);
            $this->db->update('isi_manajemenrefensi', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Post has been updated!</div>');
            redirect('MR');
        }
    }

    public function hapuslembaga($id)
    {
        $post = $this->db->get_where('isi_manajemenrefensi', ['id' => $id])->row_array();

        if ($post['image'] != "") {
            unlink('./assets/img/isi/' . $post['image']);
        }

        $this->db->where('id', $id);
        $this->db->delete('isi_manajemenrefensi');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Telah di Hapus!</div>');
        redirect('MR');
    }

    public function filemr()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $query = $this->db->get_where('file_mr');
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

        $data['doc'] = $this->db->get('file_mr')->result_array();
        $this->form_validation->set_rules('dokumen', 'Dokumen', 'required');
        $this->form_validation->set_rules('kode', 'Kode', 'required');

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
                        'dokumen' => $this->input->post('dokumen'),
                        'file' => $this->upload->data('file_name'),
                        'kode' => $this->input->post('kode')
                    ];

                    $this->db->insert('file_mr', $data);

                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New Post Added!</div>');
                    redirect('MR/filemr');
                }
            }
        }
    }

    public function hapusfilemr($id)
    {
        $post = $this->db->get_where('file_mr', ['id' => $id])->row_array();

        if ($post['file'] != "") {
            unlink('./assets/file/pendukung/' . $post['file']);
        }

        $this->db->where('id', $id);
        $this->db->delete('file_mr');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Telah di Hapus!</div>');
        redirect('MR/filemr');
    }
}

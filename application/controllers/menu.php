
<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('email')) {
            redirect('login');
        }
    }
    public function index()
    {
        $data['title'] = 'Manajenen Menu';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->load->model('Menu_model', 'menu');

        $data['subMenu'] = $this->menu->getSubMenu();
        $data['menu'] = $this->db->get('user_menu')->result_array();

        $this->form_validation->set_rules('submenu', 'Submenu', 'required');
        $this->form_validation->set_rules('menu_id', 'Menu', 'required');
        $this->form_validation->set_rules('url', 'URL', 'required');
        $this->form_validation->set_rules('icon', 'Icon', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('menu/submenu', $data);
            $this->load->view('template/footer');
        } else {
            $data = [
                'submenu' => $this->input->post('submenu'),
                'menu_id' => $this->input->post('menu_id'),
                'url' => $this->input->post('url'),
                'icon' => $this->input->post('icon'),

            ];
            $this->db->insert('user_sub_menu', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New sub menu added!</div>');
            redirect('menu');
        }
    }

    public function editSubMenu($id)
    {
        $data['title'] = 'Edit Submenu Management';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->load->model('Menu_model', 'menu');

        $data['subMenu'] = $this->menu->getSubMenu();
        $data['menu'] = $this->db->get('user_menu')->result_array();
        $data['subMenuById'] = $this->menu->getSubMenuById($id);

        $this->form_validation->set_rules('submenu', 'Submenu', 'required');
        $this->form_validation->set_rules('menu_id', 'Menu', 'required');
        $this->form_validation->set_rules('url', 'URL', 'required');
        $this->form_validation->set_rules('icon', 'Icon', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('menu/editSubMenu', $data);
            $this->load->view('template/footer');
        } else {
            $data = [
                'id' => $this->input->post('id'),
                'submenu' => $this->input->post('submenu'),
                'menu_id' => $this->input->post('menu_id'),
                'url' => $this->input->post('url'),
                'icon' => $this->input->post('icon'),
            ];

            $this->db->where('id', $id);
            $this->db->update('user_sub_menu', $data);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Edit sub menu success!</div>');
            redirect('menu');
        }
    }

    public function deleteSubMenu($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('user_sub_menu');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Delete sub menu success!</div>');
        redirect('menu');
    }
    public function Menulembaga1()
    {

        $data['title'] = 'Halaman Lembaga';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->db->order_by("kode_standar", "ASC");
        $query = $this->db->get_where('standar');
        $row = $query->result_array();
        $data['rows'] = $row;


        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('menu/lembaga1', $data);
        $this->load->view('template/footer');
    }
    public function TambahMenul1()
    {

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['post'] = $this->db->get('standar')->result_array();

        $data['title'] = 'Standar menu ';
        $this->form_validation->set_rules('kode_standar', 'kode_standar', 'required');
        $this->form_validation->set_rules('nama_standar', 'nama_standar', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');


        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('Menu/tambahmenul1', $data);
            $this->load->view('template/footer');
        } else {

            $data = [

                'kode_standar' => $this->input->post('kode_standar'),
                'nama_standar' => $this->input->post('nama_standar'),
                'deskripsi' => $this->input->post('deskripsi')

            ];

            $this->db->insert('standar', $data);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">data baru telah ditambah</div>');
            redirect('menu/menulembaga1');
        }
    }
    public function editmenul1($kode_standar)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['post'] = $this->db->get_where('standar', ['kode_standar' => $kode_standar])->row_array();

        $data['title'] = 'Edit standar';

        $this->form_validation->set_rules('nama_standar', 'nama_standar', 'required');
        $this->form_validation->set_rules('deskripsi', 'deskripsi', 'required');


        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('menu/editmenul1', $data);
            $this->load->view('template/footer');
        } else {
            $kode_standar = $this->input->post('kode_standar');
            $nama_standar = $this->input->post('nama_standar');
            $deskripsi = $this->input->post('deskripsi');

            $data = [
                'kode_standar' => $this->input->post('kode_standar'),
                'nama_standar' => $this->input->post('nama_standar'),
                'deskripsi' => $this->input->post('deskripsi'),

            ];

            $this->db->where('kode_standar', $kode_standar);
            $this->db->update('standar', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">menu setandar berhasil ditambah</div>');
            redirect('menu/menulembaga1');
        }
    }
    public function hapusmenulembaga($kode_standar)
    {
        $this->db->where('kode_standar', $kode_standar);
        $this->db->delete('standar');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Delete menu lembaga!</div>');
        redirect('menu/menulembaga1');
    }
    public function subStandar()
    {

        $data['title'] = 'Sub standar';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->db->order_by("kode_sub_standar", "ASC");
        $query = $this->db->get_where('sub_standar');
        $row = $query->result_array();
        $data['rows'] = $row;


        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('menu/sub_standar', $data);
        $this->load->view('template/footer');
    }
    public function Tambahsubstandar()
    {

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['post'] = $this->db->get('sub_standar')->result_array();

        $data['title'] = 'Tambah Sub Standar';
        $this->form_validation->set_rules('nama_sub_standar', 'nama_sub_standar', 'required');
        $this->form_validation->set_rules('kode_standar', 'kode_standar', 'required');
        $this->form_validation->set_rules('kode_sub_standar', 'kode_sub_standar', 'required');


        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('Menu/tambahsubstandar', $data);
            $this->load->view('template/footer');
        } else {

            $data = [

                'nama_sub_standar' => $this->input->post('nama_sub_standar'),
                'kode_standar' => $this->input->post('kode_standar'),
                'kode_sub_standar' => $this->input->post('kode_sub_standar')

            ];

            $this->db->insert('sub_standar', $data);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">data baru telah ditambah</div>');
            redirect('menu/substandar');
        }
    }
    public function editsubstandar($kode_sub_standar)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['post'] = $this->db->get_where('sub_standar', ['kode_sub_standar' => $kode_sub_standar])->row_array();

        $data['title'] = 'Edit sub standar';

        $this->form_validation->set_rules('kode_standar', 'kode_standar', 'required');
        $this->form_validation->set_rules('nama_sub_standar', 'nama_sub_standar', 'required');


        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('menu/editsubstandar', $data);
            $this->load->view('template/footer');
        } else {
            $kode_sub_standar = $this->input->post('kode_sub_standar');
            $nama_sub = $this->input->post('nama_sub_standar');
            $kode_standar = $this->input->post('kode_standar');

            $data = [
                'kode_sub_standar' => $this->input->post('kode_sub_standar'),
                'nama_sub_standar' => $this->input->post('nama_sub_standar'),
                'kode_standar' => $this->input->post('kode_standar'),

            ];

            $this->db->where('kode_sub_standar', $kode_sub_standar);
            $this->db->update('sub_standar', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">menu subsetandar berhasil diubah</div>');
            redirect('menu/substandar');
        }
    }
    public function hapussubstandar($kode_sub_standar)
    {
        $this->db->where('kode_sub_standar', $kode_sub_standar);
        $this->db->delete('sub_standar');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Sub Standar Telah di hapus!</div>');
        redirect('menu/substandar');
    }
    public function subsubStandar()
    {

        $data['title'] = 'Sub sub standar';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->db->select('*');
        $this->db->from('sub_sub_standar');
        $this->db->join('sub_standar', 'sub_standar.kode_sub_standar=sub_sub_standar.kode_sub_standar');
        $query = $this->db->get();
        $row = $query->result_array();
        $data['rows'] = $row;

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('menu/sub_sub_standar', $data);
        $this->load->view('template/footer');
    }
    public function Tambahsubsubstandar()
    {

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['post'] = $this->db->get('sub_sub_standar')->result_array();

        $data['title'] = 'Tambah Sub sub Standar';

        $this->form_validation->set_rules('kode_sub_standar', 'kode_sub_standar', 'required');
        $this->form_validation->set_rules('kode_sub_sub_standar', 'kode_sub_sub_standar', 'required');
        $this->form_validation->set_rules('url', 'url', 'required');


        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('Menu/tambahsubsubstandar', $data);
            $this->load->view('template/footer');
        } else {

            $data = [
                'kode_sub_sub_standar' => $this->input->post('kode_sub_sub_standar'),
                'nama_sub_sub_standar' => $this->input->post('nama_sub_sub_standar'),
                'kode_sub_standar' => $this->input->post('kode_sub_standar'),
                'url' => $this->input->post('url')

            ];

            $this->db->insert('sub_sub_standar', $data);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">data baru telah ditambah</div>');
            redirect('menu/subsubstandar');
        }
    }
    public function editsubsubstandar($kode_sub_sub_standar)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['post'] = $this->db->get_where('sub_sub_standar', ['kode_sub_sub_standar' => $kode_sub_sub_standar])->row_array();

        $data['title'] = 'Edit subsub standar';

        $this->form_validation->set_rules('kode_sub_standar', 'kode_sub_standar', 'required');
        $this->form_validation->set_rules('nama_sub_sub_standar', 'nama_sub_sub_standar', 'required');
        $this->form_validation->set_rules('url', 'url', 'required');


        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('menu/editsubsubstandar', $data);
            $this->load->view('template/footer');
        } else {
            $kode_sub_sub_standar = $this->input->post('kode_sub_sub_standar');
            $nama_sub_sub_standar = $this->input->post('nama_sub_sub_standar_standar');
            $kode_sub_standar = $this->input->post('kode_sub_standar');
            $url = $this->input->post('url');

            $data = [
                'kode_sub_sub_standar' => $this->input->post('kode_sub_sub_standar'),
                'nama_sub_sub_standar' => $this->input->post('nama_sub_sub_standar'),
                'kode_sub_standar' => $this->input->post('kode_sub_standar'),
                'url' => $this->input->post('url'),

            ];

            $this->db->where('kode_sub_sub_standar', $kode_sub_sub_standar);
            $this->db->update('sub_sub_standar', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">menu subsetandar berhasil diubah</div>');
            redirect('menu/subsubstandar');
        }
    }
    public function hapussubsubstandar($kode_sub_sub_standar)
    {
        $this->db->where('kode_sub_sub_standar', $kode_sub_sub_standar);
        $this->db->delete('sub_sub_standar');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Sub Standar Telah di hapus!</div>');
        redirect('menu/subsubstandar');
    }
}

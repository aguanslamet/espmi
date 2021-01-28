<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }
    public function index()
    {
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email', [
            'required' => 'Email belum diisi!',
        ]);
        $this->form_validation->set_rules('password', 'Password', 'required|trim', [
            'required' => 'Password belum diisi!',
        ]);
        if ($this->form_validation->run() == false) {
            $data['title'] = 'Login E-SPMI';
            $this->load->view('templatelogin/header', $data);
            $this->load->view('auth/login');
            $this->load->view('templatelogin/footer');
        } else {
            $this->_login();
        }
    }

    private function _login()
    {

        $email = $this->input->post('email');
        $pass = $this->input->post('password');

        $user = $this->db->get_where('user', ['email' => $email])->row_array();
        if ($user) {
            if (password_verify($pass, $user['password'])) {
                $data = [
                    'email' => $user['email'],
                    'role_id' => $user['role_id']
                ];
                $this->session->set_userdata($data);
                if ($user['role_id'] == 1) {
                    redirect('profile');
                } elseif ($user['role_id'] == 2) {
                    redirect('profile');
                } elseif ($user['role_id'] == 3) {
                    redirect('profile');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Salah!</div>');
                redirect('Login');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Tidak ada Email yang terdaftar!</div>');
            redirect('auth');
        }
    }

    public function registration()
    {
        $this->form_validation->set_rules(
            'name',
            'Name',
            'required|trim',
            [
                'required' => 'Nama belum diisi!',
            ]
        );
        $this->form_validation->set_rules(
            'email',
            'Email',
            'required|trim|valid_email|is_unique[user.email]',
            [
                'required' => 'Email belum diisi!',
                'valid_email' => 'Email salah',
                'is_unique' => 'Email ini sudah digunakan',
            ]
        );
        $this->form_validation->set_rules(
            'nohp',
            'Nohp',
            'required|numeric|trim|is_unique[user.nohp]',
            [
                'required' => 'nomer telepon belum diisi!',
                'numeric' => 'Nomer tidak sesuai, masukkan dengan angka!',
                'is_unique' => 'nomer telepon ini sudah digunakan',
            ]
        );
        $this->form_validation->set_rules('password', 'Password', 'required|trim|min_length[3]|matches[password2]', [
            'required' => 'Kata Sandi belum diisi!',
            'matches' => 'Kata Sandi tidak sama!',
            'min_length' => 'Kata Sandi Terlau sedikit!'
        ]);
        $this->form_validation->set_rules('password2', 'Password2', 'required|trim|matches[password]');
        $this->form_validation->set_rules('role_id', 'Role_id', 'required|trim');
        if ($this->form_validation->run() == false) {
            $data['title'] = 'Registration E-SPMI';
            $this->load->view('templatelogin/header', $data);
            $this->load->view('auth/registration');
            $this->load->view('templatelogin/footer');
        } else {
            $data = [
                'name' => htmlspecialchars($this->input->post('name', true)),
                'email' => htmlspecialchars($this->input->post('email', true)),
                'nohp' => htmlspecialchars($this->input->post('nohp', true)),
                'image' => 'default.png',
                'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                'role_id' => htmlspecialchars($this->input->post('role_id', true)),
                'date_created' => time(),
                'is_active' => '1'
            ];
            $this->db->insert('user', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Selamat Akun anda berhasil di buat, Siahkan Masuk!</div>');
            redirect('Login');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Anda Telah Keluar!</div>');
        redirect('Login');
    }
}

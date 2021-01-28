<?php
function Batasan(){
    $ci=get_instance();
    if (!$ci->session->userdata('email')) {
        redirect('login');
    } else {
        
    }
}
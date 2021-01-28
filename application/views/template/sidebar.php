 <!-- Sidebar -->
 <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

     <!-- Sidebar - Brand -->
     <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
         <div class="sidebar-brand-icon ">
             <i class="fas fa-school "></i>
         </div>
         <div class="sidebar-brand-text mx-3">E-SPMI FASTIKOM</div>
     </a>

     <!-- Divider -->
     <hr class="sidebar-divider ">
     <?php
        $role_id = $this->session->userdata('role_id');
        $queryMenu = "SELECT `user_menu`.`id`, `menu`
                        FROM `user_menu` JOIN `user_access_menu`
                        ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                        WHERE `user_access_menu`.`role_id` = $role_id
                        ORDER BY `user_access_menu`.`menu_id` ASC
                        ";
        $menu = $this->db->query($queryMenu)->result_array();
        ?>

     <!-- Looping Menu -->
     <?php foreach ($menu as $m) : ?>
         <div class="sidebar-heading">
             <?= $m['menu']; ?>
         </div>

         <!-- Siapkan Sub-menu sesuai menu -->
         <?php
            $menuId = $m['id'];
            $querySubMenu = "SELECT *
                                FROM `user_sub_menu` JOIN `user_menu`
                                ON `user_sub_menu`.`menu_id` = `user_menu`.`id` 
                                WHERE `user_sub_menu`.`menu_id` = $menuId
                                 ";
            $subMenu = $this->db->query($querySubMenu)->result_array();
            ?>

         <?php foreach ($subMenu as $sm) : ?>
             <?php if ($title == $sm['submenu']) : ?>
                 <li class="nav-item active">
                 <?php else : ?>
                 <li class="nav-item">
                 <?php endif; ?>
                 <li class="nav-item">
                     <a class="nav-link collapsed" href="<?= base_url($sm['url']); ?>" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                         <i class="<?= $sm['icon']; ?>"></i>
                         <span><?= $sm['submenu']; ?></span>
                     </a>
                     <?php
                        if ($sm['submenu'] == "Menejemen Refrensi") { ?>
                         <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">

                             <div class="bg-white py-2 collapse-inner rounded">
                                 <a class="collapse-item" href="<?= base_url('MR') ?>">modul conten</a>
                                 <a class="collapse-item" href="<?= base_url('MR/filemr') ?>">dokumen pendukung</a>


                             </div>
                         </div>
                 </li>
             <?php } ?>

         <?php endforeach; ?>
         <!-- Divider -->
         <hr class="sidebar-divider mt-3">
     <?php endforeach; ?>


 </ul>
 <!-- End of Sidebar -->
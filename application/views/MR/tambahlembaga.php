 <!-- Begin Page Content -->
 <div class="container-fluid">

     <!-- Page Heading -->
     <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

     <?= form_open_multipart('MR/tambahlembaga'); ?>
     <div class="row">
         <div class="col-lg-6">
             <label for="status">Judul</label>
             <div class="form-group">
                 <?php
                    $i = 1;
                    $queryMenu = "SELECT * FROM menu_l3 ";
                    $menu = $this->db->query($queryMenu)->result_array();
                    ?>
                 <select name="judul" id="judul" class="form-control">
                     <?php foreach ($menu as $m) : ?>
                         <option value="<?= $m['nama_submenu']; ?>">
                             <?= $m['Kode_setandar']; ?> <?= $m['nama_submenu']; ?>
                         </option>
                     <?php endforeach; ?>
                 </select>

             </div>
             <div class="form-group">
                 <select name="kode" id="kode" class="form-control">
                     <?php foreach ($menu as $m) : ?>
                         <option value="<?= $i++ ?>">
                             <?= $m['Kode_setandar']; ?>
                         </option>
                     <?php endforeach; ?>
                 </select>
             </div>
         </div>
         <div class="col-lg-8">
             <div class="form-group">
                 <label for="body">text isi</label>
                 <textarea name="isi" class="form-control tinymce" id="isi"></textarea>
                 <?= form_error('body', '<small class="text-danger pl-3">', '</small>'); ?>
             </div>
         </div>
         <br>
     </div>
     <button type="submit" class="btn btn-primary">Add</button>
     </form>

 </div>
 <!-- /.container-fluid -->

 </div>
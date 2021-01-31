 <!-- Begin Page Content -->
 <div class="container-fluid">

     <!-- Page Heading -->
     <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

     <?= form_open_multipart('MR/tambahlembaga'); ?>
     <div class="row">
         <div class="col-lg-6">
             <label for="status">urutan</label>
             <div class="form-group">
                 <?php
                    $i = 1;
                    $queryMenu = "SELECT * FROM sub_sub_standar ";
                    $menu = $this->db->query($queryMenu)->result_array();
                    ?>
                 <select name="kode_mr" id="kode_mr" class="form-control">
                     <?php foreach ($menu as $m) : ?>
                         <option value="<?= $m['kode_sub_sub_standar']; ?>">
                             <?= $m['kode_sub_sub_standar']; ?> <?= $m['nama_sub_sub_standar']; ?>
                         </option>
                     <?php endforeach; ?>
                 </select>

             </div>
             <label for="status">Judul</label>
             <div class="form-group">
                 <?php
                    $i = 1;
                    $queryMenu = "SELECT * FROM sub_sub_standar ";
                    $menu = $this->db->query($queryMenu)->result_array();
                    ?>
                 <select name="nama" id="nama" class="form-control">
                     <?php foreach ($menu as $m) : ?>
                         <option value="<?= $m['nama_sub_sub_standar']; ?>">
                             <?= $m['nama_sub_sub_standar']; ?>
                         </option>
                     <?php endforeach; ?>
                 </select>

             </div>

         </div>
         <div class="col-lg-8">
             <div class="form-group">
                 <label for="body">text isi</label>
                 <textarea name="deskripsi" class="form-control tinymce" id="deskripsi"></textarea>
                 <?= form_error('deskripsi', '<small class="text-danger pl-3">', '</small>'); ?>
             </div>
         </div>
         <br>
     </div>
     <button type="submit" class="btn btn-primary">Add</button>
     </form>

 </div>
 <!-- /.container-fluid -->

 </div>
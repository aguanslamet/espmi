    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
        <?= form_open_multipart('menu/tambahmenul1'); ?>
        <div class="row">
            <div class="col-lg-4">
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Daftar Urutan Sudah ada</label>
                    <select multiple class="form-control" readonly>
                        <?php
                        $queryMenu = "SELECT * FROM standar";
                        $menu = $this->db->query($queryMenu)->result_array();
                        ?>
                        <?php foreach ($menu as $m) : ?>
                            <option><?= $m['kode_standar'] ?>. <?= $m['nama_standar'] ?></option>
                        <?php endforeach ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="menu_id">urutan</label>
                    <input type="text" id="kode_standar" name="kode_standar" class="form-control" placeholder="Menu Ke-">
                    <?= form_error('kode_standar', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="form-group">
                    <label for="nama_standar">nama Menu</label>
                    <input type="text" id="nama_standar" name="nama_standar" class="form-control" placeholder="nama_standar...">
                    <?= form_error('nama_standar', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="form-group">
                    <label for="dokumen">Deskripsi</label>
                    <input type="text" id="deskripsi" name="deskripsi" class="form-control" placeholder="Deskripsi singkat...">
                    <?= form_error('deskripsi', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>

            </div>
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Tambah</button>
        </form>

    </div>
    <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->
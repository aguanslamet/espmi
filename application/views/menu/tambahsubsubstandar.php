    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
        <?= form_open_multipart('menu/tambahsubsubstandar'); ?>
        <div class="row">
            <div class="col-lg-4">
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Daftar Urutan Sudah ada</label>
                    <select multiple class="form-control" readonly>
                        <?php
                        $queryMenu = "SELECT * FROM sub_sub_standar";
                        $menu = $this->db->query($queryMenu)->result_array();
                        ?>
                        <?php foreach ($menu as $m) : ?>
                            <option><?= $m['kode_sub_sub_standar'] ?>. <?= $m['nama_sub_sub_standar'] ?></option>
                        <?php endforeach ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="kode_sub_standar">urutan</label>
                    <input type="text" id="kode_sub_sub_standar" name="kode_sub_sub_standar" class="form-control" placeholder="Menu Ke-">
                    <?= form_error('kode_sub_sub_standar', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="form-group">
                    <label for="nama_sub">Nama subsubstandar</label>
                    <input type="text" id="nama_sub_sub_standar" name="nama_sub_sub_standar" class="form-control" placeholder="nama...">
                    <?= form_error('nama_sub_sub_standar', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="form-group">
                    <label for="nama_sub_standar">SUBStandar</label>
                    <select name="kode_sub_standar" id="kode_sub_standar" class="form-control">
                        <?php
                        $i = 1;
                        $queryMenu = "SELECT * FROM sub_standar";
                        $menu = $this->db->query($queryMenu)->result_array();
                        ?>
                        <?php foreach ($menu as $m) : ?>
                            <option value="<?= $m['kode_sub_standar'] ?>">
                                <?= $m['nama_sub_standar']; ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="nama_sub">Url</label>
                    <input type="text" id="url" name="url" class="form-control" placeholder="nama...">
                    <?= form_error('url', '<small class="text-danger pl-3">', '</small>'); ?>
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
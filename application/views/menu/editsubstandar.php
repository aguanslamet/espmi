    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
        <?= form_open_multipart(); ?>
        <input type="hidden" name="id" value="<?= $user['id']; ?>">
        <input type="hidden" name="kode_sub_standar" value="<?= $post['kode_sub_standar']; ?>">
        <div class="row">
            <div class="col-lg-4">
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Daftar standar yang ada</label>
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
                    <label for="kode_sub_standar">Standar</label>
                    <input type="text" id="kode_standar" name="kode_standar" class="form-control" placeholder="masukan nomer urut.." value="<?= $post['kode_standar']; ?>">
                    <?= form_error('kode_standar', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="form-group">
                    <label for="nama_sub">Nama substandar</label>
                    <input type="text" id="nama_sub_standar" name="nama_sub_standar" class="form-control" placeholder="nama..." value="<?= $post['nama_sub_standar']; ?>">
                    <?= form_error('nama_sub_standar', '<small class="text-danger pl-3">', '</small>'); ?>
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
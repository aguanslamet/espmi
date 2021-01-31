    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
        <?= form_open_multipart(); ?>
        <input type="hidden" name="id" value="<?= $user['id']; ?>">
        <input type="hidden" name="kode_sub_sub_standar" value="<?= $post['kode_sub_sub_standar']; ?>">
        <div class="row">
            <div class="col-lg-4">
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Daftar sub standar yang ada</label>
                    <select multiple class="form-control" readonly>
                        <?php
                        $queryMenu = "SELECT * FROM sub_standar";
                        $menu = $this->db->query($queryMenu)->result_array();
                        ?>
                        <?php foreach ($menu as $m) : ?>
                            <option><?= $m['kode_sub_standar'] ?>. <?= $m['nama_sub_standar'] ?></option>
                        <?php endforeach ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="kode_sub_sub_standar">sub Standar</label>
                    <input type="text" id="kode_sub_standar" name="kode_sub_standar" class="form-control" placeholder="Menu Ke-" value="<?= $post['kode_sub_standar']; ?>">
                    <?= form_error('kode_sub_standar', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="form-group">
                    <label for="nama_sub_sub_standar">Nama subsubstandar</label>
                    <input type="text" id="nama_sub_sub_standar" name="nama_sub_sub_standar" class="form-control" placeholder="nama..." value="<?= $post['nama_sub_sub_standar']; ?>" readonly>
                    <?= form_error('nama_sub_sub_standar', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="form-group">
                    <label for="url">url</label>
                    <input type="text" id="url" name="url" class="form-control" placeholder="nama..." value="<?= $post['url']; ?>">
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
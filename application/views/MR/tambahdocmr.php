    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

        <?= form_open_multipart('MR/tambahfilemr'); ?>

        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <select name="kode_mr" id="kode_mr" class="form-control">
                        <?php
                        $i = 1;
                        $queryMenu = "SELECT * FROM sub_sub_standar ";
                        $menu = $this->db->query($queryMenu)->result_array();
                        ?>
                        <?php foreach ($menu as $m) : ?>
                            <option value="<?= $m['kode_sub_sub_standar'] ?>">
                                <?= $m['nama_sub_sub_standar']; ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="dokumen">Tentang Dokumen</label>
                    <input type="text" id="nama" name="nama" class="form-control" placeholder="dokumen Apa...">
                    <?= form_error('nama', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="input-group">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" name="file" id="file" aria-describedby="inputGroupFileAddon01">
                        <label class="custom-file-label" for="file">Choose file</label>
                    </div>
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
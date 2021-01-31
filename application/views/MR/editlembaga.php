    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

        <?= form_open_multipart(); ?>
        <input type="hidden" name="id" value="<?= $user['id']; ?>">
        <input type="hidden" name="kode_mr" value="<?= $post['kode_mr']; ?>">
        <div class="row">
            <div class="col-lg-8">
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
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="title" id="nama" name="nama" class="form-control" value="<?= $post['nama']; ?>" readonly>

                </div>
                <div class="form-group">
                    <div class="col-sm-2">Image</div>
                    <div class="col-sm-10">
                        <div class="row">
                            <div class="col-sm-3">
                                <img src="<?= base_url('./assets/img/isi/') . $post['image']; ?>" class="img-thumbnail">
                            </div>
                            <div class="col-sm-9">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="image" name="image">
                                    <label class="custom-file-label" for="image">Choose image</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="body">Body</label>
                <textarea class="form-control tinymce" name="deskripsi" id="deskripsi" cols="150" rows="13"><?= $post['deskripsi']; ?></textarea>
                <?= form_error('deskripsi', '<small class="text-danger pl-3">', '</small>'); ?>
            </div>
            <div class="form-group">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Edit</button>
        </form>

    </div>
    <!-- /.container-fluid -->

    </div>
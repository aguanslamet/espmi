    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

        <?= form_open_multipart(); ?>
        <input type="hidden" name="id" value="<?= $user['id']; ?>">
        <input type="hidden" name="id" value="<?= $post['id']; ?>">
        <div class="row">
            <div class="col-lg-8">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="title" id="judul" name="judul" class="form-control" value="<?= $post['judul']; ?>" readonly>

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
                <textarea class="form-control tinymce" name="isi" id="isi" cols="150" rows="13"><?= $post['isi']; ?></textarea>
                <?= form_error('isi', '<small class="text-danger pl-3">', '</small>'); ?>
            </div>
            <div class="form-group">
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Edit</button>
        </form>

    </div>
    <!-- /.container-fluid -->

    </div>
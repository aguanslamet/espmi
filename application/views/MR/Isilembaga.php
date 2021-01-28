    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

        <div class="row">
            <div class="col-lg-12">

                <?= form_error('title', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
                <?= form_error('image', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
                <?= form_error('deskription', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                <?= $this->session->flashdata('message'); ?>

                <a href="<?= base_url('MR/tambahlembaga'); ?>" class="btn btn-primary mb-3">Tambah Isi Halaman </a>
                <!-- DataTales -->
                <div class="card shadow mb-4">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th scope="col">no</th>
                                        <th scope="col">Judul</th>
                                        <th scope="col">image</th>
                                        <th scope="col">Link_SEO</th>
                                        <th scope="col">opsi</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php $i = 1;
                                    foreach ($rows as $ps) : ?>
                                        <tr>
                                            <th scope="row"><?= $i++; ?></th>
                                            <td><?= $ps['judul']; ?></td>
                                            <td><img src="<?= base_url('./assets/img/isi/') . $ps['image']; ?>" width="100" alt=""></td>
                                            <td><?= $ps['link_seo']; ?></td>
                                            <td>
                                                <a class="badge badge-success" href="<?= base_url('MR/editlembaga/') . $ps['id']; ?>">Edit</a>
                                                <a class="badge badge-danger" href="<?= base_url('MR/hapuslembaga/') . $ps['id']; ?>" onclick="return confirm('Are you sure delete this data?');">Delete</a>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- /.container-fluid -->

    </div>
    <!-- End
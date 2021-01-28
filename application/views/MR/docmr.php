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

                <a href="<?= base_url('MR/tambahfilemr'); ?>" class="btn btn-primary mb-3">Tambah dokumen pendukung </a>
                <!-- DataTales -->
                <div class="card shadow mb-4">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th scope="col">no</th>
                                        <th scope="col">nama</th>
                                        <th scope="col">file</th>
                                        <th scope="col">opsi</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php $i = 1;
                                    foreach ($rows as $ps) : ?>
                                        <tr>
                                            <th scope="row"><?= $i++; ?></th>
                                            <td><?= $ps['dokumen']; ?></td>
                                            <td><?= $ps['file']; ?></td>
                                            <td>
                                                <a class="badge badge-danger" href="<?= base_url('MR/hapusfilemr/') . $ps['id']; ?>" onclick="return confirm('anda yakin ingin mnghapus ini?');">Delete</a>
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
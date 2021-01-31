    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

        <div class="row">
            <div class="col-lg-12">

                <?= form_error('urutan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
                <?= form_error('nama', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
                <?= form_error('deskripsi', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

                <?= $this->session->flashdata('message'); ?>

                <a href="<?= base_url('menu/tambahsubsubstandar'); ?>" class="btn btn-primary mb-3">Tambah subsub standar Halaman </a>
                <!-- DataTales -->
                <div class="card shadow mb-4">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th scope="col">no</th>
                                        <th scope="col">nama Sub Sub standar</th>
                                        <th scope="col">bagian sub setandar</th>
                                        <th scope="col">url</th>
                                        <th scope="col">pilihan</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php $i = 1;
                                    foreach ($rows as $ps) : ?>
                                        <tr>
                                            <th scope="row"><?= $i++; ?></th>
                                            <td><?= $ps['nama_sub_sub_standar']; ?></td>
                                            <td><?= $ps['nama_sub_standar']; ?></td>
                                            <td><?= $ps['url']; ?></td>

                                            <td>
                                                <a class="badge badge-success" href="<?= base_url('menu/editsubsubstandar/') . $ps['kode_sub_sub_standar']; ?>">Edit</a>
                                                <a class="badge badge-danger" href="<?= base_url('menu/hapussubsubstandar/') . $ps['kode_sub_sub_standar']; ?>" onclick="return confirm('Are you sure delete this data?');">Delete</a>
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
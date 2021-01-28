<br>
<div class="container pt-5">
    <div class="row">

        <div class="col-lg-8">

            <div class="blog-detail card mb-4">
                <div class="card-body">

                    <h2 class="card-title">
                        <?= $rows['judul'] ?><small> </small>
                    </h2>
                    <div class="post-meta">

                        <i class="fa fa-clock-o"></i> <?= date('d F Y', $rows['tgl_upload']); ?>

                    </div>
                    <?php if ($rows['image'] == "") {
                    ?>
                    <?php } else { ?>
                        <div class="image-container">
                            <img src="" alt="$rows[judul]">
                        </div>
                    <?php } ?>
                    <div class="card-text">
                        <?= $rows['isi']; ?>
                    </div>
                    <P>
                        <ol>
                            <?php

                            $i = $rows["kode"];
                            $menu = "SELECT * FROM file_mr WHERE kode=$i";
                            $file = $this->db->query($menu)->result_array();

                            ?>
                            <?php foreach ($file as $f) : ?>
                                <li>
                                    <td> <?= $f['dokumen'] ?> (<a href="<?php echo base_url() . "halaman/download/" . $f['file']; ?>">Download
                                        </a>)</td>
                                </li>

                            <?php endforeach; ?>
                        </ol>
                </div>
            </div>
        </div>
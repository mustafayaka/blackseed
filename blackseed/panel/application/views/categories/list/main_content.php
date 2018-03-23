<?php //print_r($results)?>
<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-danger" id="users-list">
                <div class="box-header with-border">
                    <h3 class="box-title">Manage Your Categories</h3>
                    <button class="btn btn-danger pull-right open-popup" type="button" data-modal-target="#add-category-form" data-target="<?php echo base_url('categories/add');?>">Add New Category</button>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div id="results"></div>
                    <table class="table table-bordered">
                        <tr>
                            <th>#</th>
                            <th>Category Name</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        <?php foreach($results as $result):?>
                            <tr>
                                <td><?php echo $result->id; ?></td>
                                <td><?php echo $result->name; ?></td>
                                <td></td>
                                <td>
                                    <button type="button" data-target="" data-modal-target="#edit-category-" class="btn btn-primary open-popup">
                                        Edit
                                        <span class="fa fa-pencil"></span>
                                    </button>
                                    <button data-target="" class="btn btn-danger delete">
                                        Delete
                                        <span class="fa fa-trash"></span>
                                    </button>
                                </td>
                            </tr>
                        <?php endforeach;?>
                    </table>
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix">
                    <!-- <ul class="pagination pagination-sm no-margin pull-right">
                      <li><a href="#">&laquo;</a></li>
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">&raquo;</a></li>
                    </ul> -->
                </div>
            </div>
        </div>
    </div>

</section>
<!-- /.content -->

<div class="col-lg-4">
    <div class="example-box example-box-alt pb-5">
        <!-- <h4 class="heading-2 pb-4">Keranjang</h4> -->
        <div class="card card-box mb-5">
            <div class="grid-menu grid-menu-3col">
                <div class="scroll-area-lg" style="height:550px;">
                    <div class="container">
                        <br/>
                        <form class="was-validated" id="updateForm">
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <label for="form-2-name">Name</label>
                                    <input type="text" class="form-control" id="form-2-name" name="name" required>
                                    <div class="invalid-feedback">Name wajib diisi!</div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <label for="form-2-username">Username</label>
                                    <input type="text" class="form-control" id="form-2-username" name="username" required>
                                    <div class="invalid-feedback">Username wajib diisi!</div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <label for="form-2-password">Password</label>
                                    <input type="password" class="form-control" id="form-2-password" name="password" required>
                                    <div class="invalid-feedback">Password wajib diisi!</div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <label for="form-2-email">Email</label>
                                    <input type="text" class="form-control" id="form-2-email" name="email" required>
                                    <div class="invalid-feedback">Email wajib diisi!</div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <button type="submit" class="btn btn-primary mb-4">
                                        Update
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        $.ajax({
            url: base_url +"users",
            type: "GET",
            dataType: "json",
            success: function (response) {
                $('#form-2-name').val(response.name)
                $('#form-2-username').attr('disabled', true).val(response.username)
                $('#form-2-password').val('')
                $('#form-2-email').attr('disabled', true).val(response.email)
            }
        });

        $("#updateForm").submit(function(event) {
            $.ajax({
                url: base_url +"users",
                type: "PUT",
                dataType: "json",
                data: $(this).serialize(),
                success: function (response) {
                    alert(response)
                    window.location = '<?= base_url('accounts') ?>'
                }
            });
            event.preventDefault();
        })
    })
</script>
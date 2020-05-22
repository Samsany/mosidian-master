<#include "/common/header.ftl">
<title>会员注册</title>
</head>
<body>
<div class="container me-p-t-25">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">注册账号</h5>
            <form id="form">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label me-t-r"><span style="color: red">*</span>会员名称：</label>
                            <div class="col-sm-9">
                                <input type="text" name="name"
                                       class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label me-t-r"><span style="color: red">*</span>手机号：</label>
                            <div class="col-sm-9">
                                <input type="text" name="phone"  class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label me-t-r"><span style="color: red">*</span>收货地址：</label>
                            <div class="col-sm-9">
                                <input type="text" name="address" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label me-t-r"><span style="color: red">*</span>收货联系电话：</label>
                            <div class="col-sm-9">
                                <input type="text" name="tell" class="form-control">
                            </div>
                        </div>
                    </div>

                </div>
                
              
                

               <#-- <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label me-t-r">个人描述：</label>
                            <div class="col-sm-9">
                                <textarea class="form-control" rows="4"
                                          name="description">${member.description!}</textarea>
                            </div>
                        </div>
                    </div>
                </div>-->
                <div class="me-btn-toolbar text-center">
                    <button type="button" class="btn btn-primary mr-2 save">申请</button>
                    <button type="button" class="btn btn-primary mr-2 cancel">取消</button>
                </div>
            </form>
        </div>
    </div>
</div>
<#include "/common/footer.ftl">
<script type="text/javascript">



    $(function () {
        $(".save").click(function () {
            dolphin.post('/member/update?id=' + "",
                    $('#form').serialize(),
                    function (result) {
                        if (result.status == 1) {
                            layer.msg("开卡成功", {icon: 1, time: 2000}, function () {
                                parent.location.href = parent.location.href;
                            })
                        } else {
                            dolphin.alert(result.info);
                        }
                    })
        })

        $(".cancel").click(function(){
            parent.location.href = parent.location.href;
        })
    })
</script>
</body>
</html>
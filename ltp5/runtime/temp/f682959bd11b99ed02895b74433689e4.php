<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:77:"D:\wamp\www\1\ltp5\public/../application/admin\view\article\edit_article.html";i:1479124123;s:70:"D:\wamp\www\1\ltp5\public/../application/admin\view\public\header.html";i:1478789579;s:70:"D:\wamp\www\1\ltp5\public/../application/admin\view\public\footer.html";i:1477149091;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/admin/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/static/admin/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="/static/admin/css/animate.min.css" rel="stylesheet">
    <link href="/static/admin/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/static/admin/css/plugins/chosen/chosen.css" rel="stylesheet">
    <link href="/static/admin/css/plugins/switchery/switchery.css" rel="stylesheet">
    <link href="/static/admin/css/style.min.css?v=4.1.0" rel="stylesheet">
    <link href="/static/admin/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

    <style type="text/css">
    .long-tr th{
        text-align: center
    }
    .long-td td{
        text-align: center
    }
    </style>
</head>
<link rel="stylesheet" type="text/css" href="/static/admin/webupload/webuploader.css">
<link rel="stylesheet" type="text/css" href="/static/admin/webupload/style.css">
<style>
.file-item{float: left; position: relative; width: 110px;height: 110px; margin: 0 20px 20px 0; padding: 4px;}
.file-item .info{overflow: hidden;}
.uploader-list{width: 100%; overflow: hidden;}
</style>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>编辑文章</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal m-t" name="edit" id="edit" method="post" action="edit_article">
                    <input type="hidden" name="id" value="<?php echo $article['id']; ?>">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">标题：</label>
                            <div class="input-group col-sm-4">
                                <input id="title" type="text" class="form-control" name="title" value="<?php echo $article['title']; ?>">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">所属分类：</label>
                            <div class="input-group col-sm-4">
                                <select class="form-control m-b chosen-select" name="cate_id" id="cate_id">
                                    <option value="">==请选择==</option>
                                    <?php if(!empty($cate)): if(is_array($cate) || $cate instanceof \think\Collection): if( count($cate)==0 ) : echo "" ;else: foreach($cate as $key=>$vo): ?>
                                            <option value="<?php echo $vo['id']; ?>" <?php if($article['cate_id'] == $vo['id']): ?>selected<?php endif; ?>><?php echo $vo['name']; ?></option>
                                        <?php endforeach; endif; else: echo "" ;endif; endif; ?>
                                </select>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">关键字：</label>
                            <div class="input-group col-sm-4">
                                <input id="keyword" type="text" class="form-control" name="keyword" value="<?php echo $article['keyword']; ?>">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">描述：</label>
                            <div class="input-group col-sm-4">
                                <textarea type="text" rows="5" name="remark" id="remark" placeholder="输入文章描述" class="form-control"><?php echo $article['remark']; ?></textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">封面：</label>
                            <div class="input-group col-sm-4">
                                <input type="hidden" id="data_photo" name="photo" value="<?php echo $article['photo']; ?>">
                                <div id="fileList" class="uploader-list" style="float:right"></div>
                                <div id="imgPicker" style="float:left">选择图片</div>
                                <img id="img_data" height="100px" style="float:left;margin-left: 50px;margin-top: -10px;" onerror="this.src='/static/admin/images/no_img.jpg'" src="/uploads/images/<?php echo $article['photo']; ?>"/>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>                          
                        <div class="form-group">
                            <label class="col-sm-3 control-label " for="myEditor">内容：</label>
                            <div class="input-group col-sm-9">
                                <script src="/static/admin/ueditor/ueditor.config.js" type="text/javascript"></script>
                                <script src="/static/admin/ueditor/ueditor.all.js" type="text/javascript"></script>
                                <textarea name="content" style="width:90%" id="myEditor"><?php echo $article['content']; ?></textarea>
                                <script type="text/javascript">
                                    var editor = new UE.ui.Editor();
                                    editor.render("myEditor");
                                </script>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">是否推荐：</label>
                            <div class="input-group col-sm-4">
                                <div class="radio i-checks">
                                    <?php if($article['is_tui'] == 1): ?>
                                        <input type="radio" name='is_tui' value="1" checked="checked" />是&nbsp;&nbsp;
                                        <input type="radio" name='is_tui' value="0" />否
                                    <?php else: ?>
                                        <input type="radio" name='is_tui' value="1" />是&nbsp;&nbsp;
                                        <input type="radio" name='is_tui' value="0" checked="checked" />否
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">文章类型：</label>
                            <div class="input-group col-sm-4">
                                <div class="radio i-checks">
                                    <?php if($article['type'] == 1): ?>
                                        <input type="radio" name='type' value="1" checked="checked" />原创&nbsp;&nbsp;
                                        <input type="radio" name='type' value="0" />转载
                                    <?php else: ?>
                                        <input type="radio" name='type' value="1" />原创&nbsp;&nbsp;
                                        <input type="radio" name='type' value="0" checked="checked" />转载
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">状&nbsp;&nbsp;态：</label>
                            <div class="col-sm-6">
                                <div class="radio ">                                        
                                    <input type="checkbox" name='status' value="1" class="js-switch" checked />&nbsp;&nbsp;默认开启                                     
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">访问量：</label>
                            <div class="input-group col-sm-4">
                                <input type="text" name="views" id="views" value="1" class="form-control" value="<?php echo $article['views']; ?>">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">作者：</label>
                            <div class="input-group col-sm-4">
                                <input type="text" name="writer" id="writer" class="form-control" value="<?php echo $article['writer']; ?>">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-3">
                                <button class="btn btn-primary" type="submit"><i class="fa fa-save"></i> 保存</button>&nbsp;&nbsp;&nbsp;
                                <a class="btn btn-danger" href="javascript:history.go(-1);"><i class="fa fa-close"></i> 返回</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
  <script src="/static/admin/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/admin/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/admin/js/content.min.js?v=1.0.0"></script>
<script src="/static/admin/js/plugins/chosen/chosen.jquery.js"></script>
<script src="/static/admin/js/plugins/iCheck/icheck.min.js"></script>
<script src="/static/admin/js/plugins/layer/laydate/laydate.js"></script>
<script src="/static/admin/js/plugins/sweetalert/sweetalert.min.js"></script>
<script src="/static/admin/js/plugins/switchery/switchery.js"></script><!--IOS开关样式-->
<script src="/static/admin/js/jquery.form.js"></script>
<script src="/static/admin/js/layer/layer.js"></script>
<script src="/static/admin/js/laypage/laypage.js"></script>
<script src="/static/admin/js/laytpl/laytpl.js"></script>
<script>
    $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
</script>

<script type="text/javascript" src="/static/admin/webupload/webuploader.min.js"></script>

<script type="text/javascript">
    var $list = $('#fileList');
    //上传图片,初始化WebUploader
    var uploader = WebUploader.create({
     
        auto: true,// 选完文件后，是否自动上传。   
        swf: '/static/admin/js/webupload/Uploader.swf',// swf文件路径 
        server: "<?php echo url('Upload/upload'); ?>",// 文件接收服务端。
        duplicate :true,// 重复上传图片，true为可重复false为不可重复
        pick: '#imgPicker',// 选择文件的按钮。可选。

        accept: {
            title: 'Images',
            extensions: 'gif,jpg,jpeg,bmp,png',
            mimeTypes: 'image/jpg,image/jpeg,image/png'
        },

        'onUploadSuccess': function(file, data, response) {
            $("#data_photo").val(data._raw);
            $("#img_data").attr('src', '/uploads/images/' + data._raw).show();
        }
    });

    uploader.on( 'fileQueued', function( file ) {
        $list.html( '<div id="' + file.id + '" class="item">' +
            '<h4 class="info">' + file.name + '</h4>' +
            '<p class="state">正在上传...</p>' +
        '</div>' );
    });

    // 文件上传成功
    uploader.on( 'uploadSuccess', function( file ) {
        $( '#'+file.id ).find('p.state').text('上传成功！');
    });

    // 文件上传失败，显示上传出错。
    uploader.on( 'uploadError', function( file ) {
        $( '#'+file.id ).find('p.state').text('上传出错!');
    }); 


</script>
<script type="text/javascript">

    $(function(){
        $('#edit').ajaxForm({
            beforeSubmit: checkForm, // 此方法主要是提交前执行的方法，根据需要设置
            success: complete, // 这是提交后的方法
            dataType: 'json'
        });

        function checkForm(){
            if( '' == $.trim($('#title').val())){
                layer.msg('标题不能为空', {icon: 5,time:1500,shade: 0.1}, function(index){
                    layer.close(index);
                });
                return false;
            }

     }

        function complete(data){
            if(data.code == 1){
                layer.msg(data.msg, {icon: 6,time:1500,shade: 0.1}, function(index){
                    layer.close(index);
                    window.location.href="<?php echo url('article/index'); ?>";
                });
            }else{
                layer.msg(data.msg, {icon: 5,time:1500,shade: 0.1}, function(index){
                    layer.close(index);
                });
                return false;
            }
        }

    });


    //IOS开关样式配置
   var elem = document.querySelector('.js-switch');
        var switchery = new Switchery(elem, {
            color: '#1AB394'
        });
    var config = {
        '.chosen-select': {},                    
    }
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }



</script>
</body>
</html>

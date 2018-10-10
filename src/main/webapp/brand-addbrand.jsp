<%--
  Created by IntelliJ IDEA.
  User: orz10
  Date: 2018/10/8
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <link rel="stylesheet" href="/richText/bootstrap-combined.no-icons.min.css">
    <link rel="stylesheet" href="/css/bootstrap-responsive.min.css">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="/richText/index.css" type="text/css"></link>
    <script src="/js/jquery-1.9.1.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/richText/bootstrap-wysiwyg.js" type="text/javascript"></script>
    <script src="/richText/jquery.hotkeys.js" type="text/javascript"></script>
    <style>
        body, html {
            width: 100%;
            height: 100%;
            background: #fff;
        }

        #editor {
            height: 200px;
        }

        #main-content {
            margin-left: 190px;
        }

        #page-content {
            margin: 0;
            background: #FFF;
            padding: 8px 20px 24px;
        }

        .modal-footer {
            background: #fff;
        }


    </style>

</head>
<body>

<div id="main-content" class="clearfix">
    <div id="page-content" class="clearfix">


        <div class="page-header position-relative">
            <h1 style="color: #2679b5;font-size: 24px;font-weight: normal">品牌商
                <small style="font-size: 14px"><i class="icon-double-angle-right"></i> 公司信息</small>
            </h1>
        </div>
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-body" style="max-height:none">
                    <form class="form-horizontal" id="addForm" action="/BrandInfo/add" method="post">

                        <div class="control-group">
                            <label class="control-label">Company Name<br>公司名称(中)</label>
                            <div class="controls">
                                <input type="text" id="company_name" name="company_name">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Company Name<br>公司名称(英)</label>
                            <div class="controls">
                                <input type="text" id="english_name" name="english_name">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Brief Introduction<br>公司简介</label>
                            <div class="controls">
                                <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i
                                                class="icon-font"></i><b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                        </ul>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i
                                                class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
                                            <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
                                            <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
                                        </ul>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i
                                                class="icon-bold"></i></a>
                                        <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i
                                                class="icon-italic"></i></a>
                                        <a class="btn" data-edit="strikethrough" title="Strikethrough"><i
                                                class="icon-strikethrough"></i></a>
                                        <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i
                                                class="icon-underline"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i
                                                class="icon-list-ul"></i></a>
                                        <a class="btn" data-edit="insertorderedlist" title="Number list"><i
                                                class="icon-list-ol"></i></a>
                                        <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i
                                                class="icon-indent-left"></i></a>
                                        <a class="btn" data-edit="indent" title="Indent (Tab)"><i
                                                class="icon-indent-right"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i
                                                class="icon-align-left"></i></a>
                                        <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i
                                                class="icon-align-center"></i></a>
                                        <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i
                                                class="icon-align-right"></i></a>
                                        <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i
                                                class="icon-align-justify"></i></a>
                                    </div>


                                    <div class="btn-group">
                                        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i
                                                class="icon-undo"></i></a>
                                        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i
                                                class="icon-repeat"></i></a>
                                    </div>
                                    <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">
                                </div>

                                <div id="editor">
                                </div>
                                <%--隐藏的input读取editor里的值--%>
                                <input type="hidden" id="introduction" name="introduction">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">GMC Report Type<br> 品牌商认证类型</label>
                            <div class="controls">
                                <input type="text" id="repory_type" name="repory_type">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">GMC Report Url<br>证书地址</label>
                            <div class="controls">
                                <input type="text" id="report_url" name="report_url">
                            </div>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" id="btnsave">保存</button>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div style="margin-left: -385px;width: 770px;" class="modal fade" id="myModal" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel">
        </div>
    </div>
</div>

<script>
    function initToolbarBootstrapBindings() {
        var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
                'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
                'Times New Roman', 'Verdana'],
            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
        $.each(fonts, function (idx, fontName) {
            fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
        });
        //$('a[title]').tooltip({container:'body'});
        $('.dropdown-menu input').click(function () {
            return false;
        })
            .change(function () {
                $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
            })
            .keydown('esc', function () {
                this.value = '';
                $(this).change();
            });

        $('[data-role=magic-overlay]').each(function () {
            var overlay = $(this), target = $(overlay.data('target'));
            overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
        });
        if ("onwebkitspeechchange" in document.createElement("input")) {
            var editorOffset = $('#editor').offset();
            $('#voiceBtn').css('position', 'absolute').offset({
                top: editorOffset.top,
                left: editorOffset.left + $('#editor').innerWidth() - 35
            });
        } else {
            $('#voiceBtn').hide();
        }
    };

    function showErrorAlert(reason, detail) {
        var msg = '';
        if (reason === 'unsupported-file-type') {
            msg = "Unsupported format " + detail;
        }
        else {
            console.log("error uploading file", reason, detail);
        }
        $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
            '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
    };
    initToolbarBootstrapBindings();
    $('#editor').wysiwyg({fileUploadError: showErrorAlert});
    /*neo*/
    $('#btnsave').click(function () {
        // window.location.href = "brand-brandInput.html";
        var introduction = $("#editor").html();
        console.log(introduction)
        $("#introduction").val(introduction)
        $("#addForm").submit()
    })
</script>

</body>
</html>



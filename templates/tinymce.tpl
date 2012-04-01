
<textarea id="elm1" name="elm1" rows="15" cols="80" style="width: 80%" class="tinymce">
    &lt;p&gt;
            This is some example text that you can edit inside the &lt;strong&gt;TinyMCE editor&lt;/strong&gt;.
    &lt;/p&gt;
    &lt;p&gt;
    Nam nisi elit, cursus in rhoncus sit amet, pulvinar laoreet leo. Nam sed lectus quam, ut sagittis tellus. Quisque dignissim mauris a augue rutrum tempor. Donec vitae purus nec massa vestibulum ornare sit amet id tellus. Nunc quam mauris, fermentum nec lacinia eget, sollicitudin nec ante. Aliquam molestie volutpat dapibus. Nunc interdum viverra sodales. Morbi laoreet pulvinar gravida. Quisque ut turpis sagittis nunc accumsan vehicula. Duis elementum congue ultrices. Cras faucibus feugiat arcu quis lacinia. In hac habitasse platea dictumst. Pellentesque fermentum magna sit amet tellus varius ullamcorper. Vestibulum at urna augue, eget varius neque. Fusce facilisis venenatis dapibus. Integer non sem at arcu euismod tempor nec sed nisl. Morbi ultricies, mauris ut ultricies adipiscing, felis odio condimentum massa, et luctus est nunc nec eros.
    &lt;/p&gt;
</textarea>
<br />
<input type="button" id="preview_button" value="Preview" />
<br />
<span id="preview"></span>

<script type="text/javascript" src="/js/tiny_mce/jquery.tinymce.js"></script>
<script type="text/javascript" src="/js/tiny_mce/tinyupload.js.php"></script>
<script>
$(document).ready( function()
{
    $('textarea.tinymce').tinymce({
                            // Location of TinyMCE script
                            script_url : '/js/tiny_mce/tiny_mce.js',

                            // General options
                            theme : "advanced",
                            plugins : "pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,advlist",

                            // Theme options
                            theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
                            theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
                            theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
                            theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak",
                            theme_advanced_toolbar_location : "top",
                            theme_advanced_toolbar_align : "left",
                            theme_advanced_statusbar_location : "bottom",
                            theme_advanced_resizing : true,

                            // Example content CSS (should be your site CSS)
                            // content_css : "css/content.css",

                            // Drop lists for link/image/media/template dialogs
                            template_external_list_url : "lists/template_list.js",
                            external_link_list_url : "lists/link_list.js",
                            external_image_list_url : "lists/image_list.js",
                            media_external_list_url : "lists/media_list.js",

                            // Replace values for the template plugin
                            template_replace_values : {
                                    username : "Some User",
                                    staffid : "991234"
                            },
                            file_browser_callback : tinyupload  //Hookup tinyupload the the filebrowser call back.
                    });
    $('#preview_button').click( function()
    {
        $('#preview').html( $('#elm1').html() );
    } );
} );


</script>
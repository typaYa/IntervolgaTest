<?php
define('UPLOAD_DIR',$_SERVER['DOCUMENT_ROOT'].'/uploads/');
?>


<form action="" method="post" enctype="multipart/form-data">
<label for="">Загрузить csv файл</label>
<input type="file" name="filename">
    <button name="upload">Загрузить</button>
</form>


<?php
if(isset($_POST['upload'])){

    if (($file = $_FILES['filename'])!==false){

        $name = "uploads/" . $_FILES["filename"]["name"];
        move_uploaded_file($_FILES["filename"]["tmp_name"], $name);
        echo "Файл загружен";
        if(($file = fopen('uploads/'.$_FILES["filename"]["name"],'r'))!==false){

            while (($data = fgetcsv($file,1000,';'))!== false){
                $j = 1;
                for ($i=0;$i<count($data);$i++){
                    if (stristr($data[$i],'.') =='.txt'){
                        $fp = fopen("uploads/$j".'.txt','w');
                        fwrite($fp,$data[$i+1]);
                    }
                    if (stristr($data[$i],'.') =='.log'){
                        $fp = fopen("uploads/$j".'.log','w');
                        fwrite($fp,$data[$i+1]);
                    }
                    if (stristr($data[$i],'.') =='.html'){
                        $fp = fopen("uploads/$j".'.html','w');
                        fwrite($fp,$data[$i+1]);
                    }
                }
                $j++;
            }
        }
    }

}

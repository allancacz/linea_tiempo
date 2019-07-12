<?php
    header('Content-Type: application/json');
    $pdo=new PDO("mysql:dbname=calendario_curso;host=127.0.0.1","root","");

    $accion = (isset($_GET['accion']))?$_GET['accion']:'leer';

    switch($accion){
        case 'agregar':
            //agregar
            $sentenciaSQL = $pdo->prepare("INSERT INTO 
            eventos(categoria,title,descripcion,color,textColor,start,end)
            VALUES(:categoria,:title,:descripcion,:color,:textColor,:start,:end)");
            
            $respuesta=$sentenciaSQL->execute(array(
                "categoria" => $_POST['categoria'],
                "title" => $_POST['title'],
                "descripcion" => $_POST['descripcion'],
                "color" => $_POST['color'],
                "textColor" => $_POST['textColor'],
                "start" => $_POST['start'],
                "end" => $_POST['end']
            ));
            echo json_encode($respuesta);
            break;

        case 'eliminar':
            $respuesta = false;
            if(isset($_POST['id'])){
                $sentenciaSQL= $pdo->prepare("DELETE FROM eventos WHERE id=:id");
                $respuesta = $sentenciaSQL->execute(array("id"=>$_POST['id']));
            }
            echo json_encode($respuesta);
            break;

        case'modificar':
            $sentenciaSQL = $pdo->prepare("UPDATE eventos SET
            categoria=:categoria,
            title=:title,
            descripcion=:descripcion,
            color=:color,
            textColor=:textColor,
            start=:start,
            end=:end
            WHERE id=:id"
            );

            $respuesta = $sentenciaSQL->execute(array(
                "categoria" => $_POST['categoria'],
                "id"=>$_POST['id'],
                "title" => $_POST['title'],
                "descripcion" => $_POST['descripcion'],
                "color" => $_POST['color'],
                "textColor" => $_POST['textColor'],
                "start" => $_POST['start'],
                "end" => $_POST['end']
            ));
            echo json_encode($respuesta);
            break;
        default:
            // Seleccionar los eventos del calendario
            $sentenciaSQL= $pdo->prepare("SELECT * FROM eventos");
            $sentenciaSQL->execute();

            $resultado= $sentenciaSQL->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($resultado);
            break;
    }

    
?>
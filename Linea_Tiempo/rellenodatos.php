<?php
if (!isset($_SESSION)) {
	session_start();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/estilos2.css">
    <title>Relleno de Datos</title>
</head>
<body>
    
    <header class="encabezado-rubrica">
        <div class="contenedor-encabezado">
            <h1>Rellena Datos</h1>
        </div>
    </header>


    <div class="datos-alumno">
        <h2>"Ensayo"</h2>
        <h3>"Alumno"</h3>
    </div>
    
    <main class="contenedor-tabla">

        <form action="relleno_datos_proceso.php" method="post" name="datos">
            <table>
                <thead>
                    <th></th>
                    <th>Calificacion</th>
                </thead>

                <tr>
                    <th>Ortografia</th>
                    <th><input type="text" class="texto-tabla" name="calOrtografiaT" id="ortografia" required></th>
                </tr>
                <tr>
                    <th>Autores</th>
                    <th><input type="text" class="texto-tabla" name="calAutoresT" id="autores"required></th>
                </tr>
                <tr>
                    <th>Conclusiones</th>
                    <th><input type="text" class="texto-tabla" name="calConclusionesT" id="conclusiones"required></th>
                </tr>
            </table>
            <input type="submit" name="ok" id="ok" class="btn-guardar" value="Guardar"/>
        </form>
    </main>
</body>
</html>
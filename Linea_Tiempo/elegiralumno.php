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
    <title>Elegir alumno</title>
</head>
<body>

    <header class="encabezado-rubrica">
        <div class="contenedor-encabezado">
            <h1>Elige un alumno</h1>
        </div>
    </header>

    <main class="contenedor-tabla">
        <table class="tabla-alumnos">
            <thead>
                <tr>
                    <th>N#Alumno</th>
                    <th>Numero de Control</th>
                    <th>Nombre</th>
                </tr>
            </thead>
            <tr>
                <th>1</th>
                <th><a href="rellenodatos.php">17320995</a></th>
                <th>Jorge Levi Tapia Lugardo</th>
            </tr>
            <tr>
                <th>2</th>
                <th><a href="rellenodatos.php">17218906</a></th>
                <th>Allan Octavio Catro Cruz</th>
            </tr>
        </table>
    </main>
    
</body>
</html>
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
    <title>Rubrica Individual</title>
</head>
<body>
    
    <header class="encabezado-rubrica">
        <div class="contenedor-encabezado">
            <h1>Rubrica Individual</h1>
        </div>
    </header>

    <div class="contenedor-boton_regresar">
        <a href="contenido_alumno.php" class=btn-regresar>Regresar</a>
    </div>

    <div class="datos-alumno">
        <h2>"Ensayo"</h2>
        <h3>"Alumno"</h3>
    </div>

    <main class="contenedor-tabla">

        <form action="#">
            <table>
                <thead>
                    <th></th>
                    <th>Calificacion</th>
                </thead>

                <tr>
                    <th>Calificacion</th>
                    <th>78</th>
                </tr>
                <tr>
                    <th>Ortografia</th>
                    <th>89</th>
                </tr>
                <tr>
                    <th>Autores</th>
                    <th>78</th>
                </tr>
                <tr>
                    <th>Conclusiones</th>
                    <th>78</th>
                </tr>
                <tr>
                    <th>Calificacion Final</th>
                    <th>89</th>
                </tr>
            </table>
        </form>
    </main>
</body>
</html>
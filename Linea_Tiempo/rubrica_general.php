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
    <title>Rubrica General</title>
</head>
<body>
    
    <header class="encabezado-rubrica">
        <h1>Rubrica General</h1>
    </header>

    <div class="contenedor-boton_regresar">
        <a href="contenido.php" class=btn-regresar>Regresar</a>
    </div>

    <main class="contenedor-tabla">
        <form action="rubrica_general_proceso.php">
            <table>
                <thead>
                    <tr>
                        <th class="primer-cuadro"><p>"Ensayo"</p></th>
                        <th>Calificacion maxima</th>
                        <th>Numero Base</th>
                    </tr>
                </thead>

                <tr>
                    <th>Ortografía</th>
                    <td><input type="text" class="texto-tabla" name="calortografia" required></td>
                    <td><input type="text" class="texto-tabla" name="baseortografia" required></td>
                </tr>

                <tr>
                    <th>Autores</th>
                    <td><input type="text" class="texto-tabla" name="calautores" required></td>
                    <td><input type="text" class="texto-tabla" name="baseautores" required></td>
                </tr>

                <tr>
                    <th>Conclusiones</th>
                    <td><input type="text" class="texto-tabla" name="calconclusiones" requiered></td>
                    <td><input type="text" class="texto-tabla" name="baseconclusiones" required></td>
                </tr>

                <tr>
                    <th>Calificación</th>
                    <td><input type="text" class="texto-tabla" name="calTotal" rquired></td>
                    <td></td>
                </tr>
            </table>

            <a href="elegiralumno.php" class="btn-guardar" name="guardar">Guardar</a>

        </form>
    </main>

</body>
</html>
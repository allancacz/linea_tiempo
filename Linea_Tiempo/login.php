<?php session_start();

// Comprobamos si ya tiene una sesion
# Si ya tiene una sesion redirigimos al contenido, para que no pueda acceder al formulario
if (isset($_SESSION['usuario'])) {
	header('Location: index.php');
	die();
}

// Comprobamos si ya han sido enviado los datos
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$usuario = filter_var(($_POST['usuario']), FILTER_SANITIZE_EMAIL);
	$tipo = strtolower($_POST['tipo']);
	$password = $_POST['password'];
	$password = hash('sha512', $password);

	// Nos conectamos a la base de datos
	try {
		$conexion = new PDO('mysql:host=localhost;dbname=calendario_curso', 'root', '');
	} catch (PDOException $e) {
		echo "Error:" . $e->getMessage();
	}

	$statement = $conexion->prepare('SELECT * FROM usuarios WHERE usuario = :usuario AND pass = :password AND tipo=:tipo');
	$statement->execute(array(
			':usuario' => $usuario,
			':password' => $password,
			':tipo' => $tipo
		));

	$resultado = $statement->fetch();
	if ($resultado !== false) {
		if ($tipo == "maestro") {
			$_SESSION['usuario'] = $usuario;
			header('Location: index.php');
		}
		elseif ($tipo == "alumno") {
			$_SESSION['usuario'] = $usuario;
			header('Location: index_alumno.php');
		}
	} else {
		$errores = '<li>Datos incorrectos</li>';
	}
}

require 'views/login.view.php';

?>
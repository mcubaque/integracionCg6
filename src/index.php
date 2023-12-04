<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Conectar PHP con PostgreSQL</title>
</head>
<body>
  <h1>
    <?php echo "Hola desde Docker"; ?>
    <br>
    <?php
      include_once("conexion.php");

      try {
        $conexion = Conexion::conexionDB();

        if($conexion){
          echo "Conexión exitosa a PostgreSQL";
        }else{
          echo "No se pudo establecer la conexión a la base de datos";
        }
      } catch (PDOException $e) {
        echo "Error en la conexión: " . $e->getMessage();
      }
    ?>
  </h1>
</body>
</html>

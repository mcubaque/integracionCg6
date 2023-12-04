<?php
class Conexion{
  public static function conexionDB(){
    $host = "postgres-server-integracion-continua";
    $dbname = "dbpoli";
    $username = "userpoli";
    $pasword = "poli1234";
    $port = 5432;

    try {
      $conn = new PDO("pgsql:host=$host; port=$port; dbname=$dbname", $username, $pasword);
      echo "Conexion exitosa";
    } catch (PDOException $exp) {
      echo "Error de conexion: " . $exp->getMessage();
      return null;
    }
  
    return $conn;


  }

}

?>

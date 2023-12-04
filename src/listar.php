<?php
require_once('conexion.php'); // Incluye el archivo de conexión

try {
    $conn = Conexion::conexionDB(); // Obtiene la conexión a la base de datos

    if ($conn) {
        $query = "SELECT * FROM public.\"HrBitPed\"";
        $stmt = $conn->query($query);
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

        echo '<h1>Registros de la tabla HrBitPed:</h1>';
        echo '<table>';

        // Imprimir encabezados de columna
        if (!empty($results)) {
            echo '<tr>';
            foreach (array_keys($results[0]) as $column) {
                echo '<th>' . $column . '</th>';
            }
            echo '</tr>';
        }

        // Imprimir datos
        $firstRow = true;
        foreach ($results as $row) {
            if ($firstRow) {
                echo '<tr>';
                $firstRow = false;
            } else {
                echo '<tr>';
            }
            foreach ($row as $value) {
                echo '<td>' . $value . '</td>';
            }
            echo '</tr>';
        }

        echo '</table>';
    }
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}

<?php

require_once "../_com/__RequireOnceComunes.php";
require_once "../sesiones/_Sesion.php";

$producto = new Producto($_REQUEST["id"], $_REQUEST["denominacion"], $_REQUEST["tipo"], $_REQUEST["precioUnidad"], $_REQUEST["stock"]);

$producto = DAO::productoActualizar($producto);

$traza = new Traza($_SESSION["id"], "ProductoActualizar", "Ha actualizado producto ",$producto->getId(), date("F j, Y, g:i a"));
// OJO ----> en el 4 campo del constructor debe ponerse el id del creado ( $categoria->getId() ) , demomento no pongo asi porq es una beta

DAO::registrarAccion($traza);

echo json_encode($producto);
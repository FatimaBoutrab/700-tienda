<?php

require_once "__RequireOnceComunes.php";

class Traza extends Dato
{
    use Identificable;

    private string $idUsuario;
    private string $localizacion;
    private string $hecho;
    private int    $posibleId; // posible id de modificacion o eliminado de lo que sea.
    private string $fecha;


    public function __construct($idUsuario, $localizacion, $hecho, $posibleId, $fecha)
    {
        $this->idUsuario = $idUsuario;
        $this->localizacion = $localizacion;
        $this->hecho = $hecho;
        $this->posibleId = $posibleId;
        $this->fecha = $fecha;
    }

    public function getIdUsuario()
    {
        return $this->idUsuario;
    }

    private function setIdUsuario($idUsuario)
    {
        $this->idUsuario = $idUsuario;
    }

    public function getLocalizacion()
    {
        return $this->localizacion;
    }

    private function setLocalizacion($localizacion)
    {
        $this->localizacion = $localizacion;
    }

    public function getHecho()
    {
        return $this->hecho;
    }

    private function setHecho($hecho)
    {
        $this->hecho = $hecho;
    }
    public function getPosibleId()
    {
        return $this->posibleId;
    }

    private function setPosibleId($posibleId)
    {
        $this->posibleId = $posibleId;
    }
    public function getFecha()
    {
        return $this->fecha;
    }

    private function setFecha($fecha)
    {
        $this->fecha = $fecha;
    }

    public function jsonSerialize()
    {
        return [
            "idUsuario" => $this->idUsuario,
            "Localizacion" => $this->Localizacion,
            "hecho" => $this->hecho,
            "posibleId" => $this->posibleId,
            "fecha" => $this->fecha
        ];

        // Esto sería lo mismo:
        //$array["nombre"] = $this->nombre;
        //$array["id"] = $this->id;
        //return $array;
    }
}

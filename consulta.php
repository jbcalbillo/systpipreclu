<?php
require "ost-config.php";


class Consulta{
    private $_db;
    private $lista_staff;

public function __construct(){
    $this->_db = new Conexion();
}

    public function buscar(){
        $this->_db->conectar();

        $consulta = $this->_db->cnx->prepare("SELECT * FROM rcl_staff");

        $consulta->execute();

        while($row = $consulta->fecth(PDO::FETCH_OBJ)){
            $this->lista_staff[] =$row;
        }

        $this->_db->desconectar();
        return $this->lista_staff;
    }

}

    
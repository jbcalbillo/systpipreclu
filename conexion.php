<?php
require "ost-config.php";


class Conexion{
    public $cnx;
    public function conectar(){
        try {

            $opciones = array(
                PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
                PDO::ATTR_ERRMODE =>PDO::ERRMODE_EXCEPTION
            );
            $this->cnx = new PDO(
                "mysql:host=localhost;
                dbname=".DB_NAME,
                DB_USER,
                DB_PASS,
                $opciones
            );
            return $this->cnx;

        } catch(PDOException $e){
            echo $e->getMessage();
        }
    }

    public function desconectar(){
        $this->cnx = null;
    }

}
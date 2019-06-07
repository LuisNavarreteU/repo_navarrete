<?php
 
namespace Modelo;

class Database{

	private $database;

	public function __construct($container)
	{
		$this->database = $container->database;
	}

	public function Noticias(){
		$arr = $this->database->select('noticias', ['codigo', 'titulo', 'lead', 'cuerpo', 'estado'],["estado[=]" =>0]);
		return $arr;
	}

	public function yaLeidas(){
		$arr = $this->database->select('noticias', ['codigo', 'titulo', 'lead', 'cuerpo', 'estado'],["estado[=]" =>1]);
		return $arr;
	}

    public function quieroLeer($cod =null){
    	if($cod != null){
			$a =["estado" => $cod];
		}else{
			$a =1;
		}
		$arr = $this->database->select('noticias', ['codigo', 'titulo', 'lead', 'cuerpo', 'estado'],["estado[=]" =>$a]);
		return $arr;
	}

	public function camEstado($esta = null){
		if($esta != null){
			$a =["codigo" => $esta];
		}
		else{
			$a =1;
		}
		$arr = $this->database->update('noticias', ['estado' =>1],['codigo[=]' => $a]);
		return $arr;
	}

}

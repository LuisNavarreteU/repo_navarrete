<?php
 
use Slim\App;
use Slim\Http\Uri;
use Slim\Http\Request;
use Slim\Http\Response;
use Slim\Views\Twig;
use Slim\Http\Environment;
use Slim\Views\TwigExtension;
use Medoo\Medoo;

return function (App $app) {

	$app->get('/', function ($request, $response) {
		return $this->view->render($response, 'index.phtml');
	});
  
    $app->get('/noticias', function ($request, $response) {
		$db = new \Modelo\Database($this);
		return $this->view->render($response, 'noticia.html', [
			'noticias'=>$db->Noticias(),
			'yaleidas' => $db->yaLeidas()
		]);
	});

	$app->get('/noticia/{codigo}',function($request,$response,$args){
		$db = new \Modelo\Database($this);
		return $this->view->render($response, 'noticia.html', [
			'cambiar' => $db->camEstado($args["codigo"]),
			've' => $db->quieroLeer($args["codigo"]),
			'noticias'=>$db->Noticias(),
			'yaVistas' => $db->yaLeidas()
		]);
	});

/*
   $app->get('/leer_este/{codigo}',function($request, $response, $args){
    	$url = 
    	$jsonData = array("codigo" => $args["codigo"]);
    	$options = array(
			'http' => array(
				'header'  => "Content-type: application/json\r\n",
				'method'  => 'POST',
				'content' => json_encode($jsonData)
			)
		);
    	$context  = stream_context_create($options);
		$result = file_get_contents($url, false, $context);
		if ($result === FALSE) { /* Handle error }

		$jsonleer = json_decode($result);
		
		$salida = array(
			"lead" => $jsonleer->data->lead,
			"cuerpo" => $jsonleer->data->cuerpo,
			"estado" => $jsonleer->data->estado,
			"titulo" => $jsonleer->data->titulo);

		return $response->withJson($salida);
	});*/
	
};
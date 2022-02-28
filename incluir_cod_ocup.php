<?php
error_reporting(0);
	$db = mysql_connect("localhost","root","");
	mysql_select_db("sistema_saude",$db);
		$codigo1 = $_POST['codigo'];
		$descricao1 = $_POST['descricao'];
		$inserir = mysql_query("INSERT INTO cod_ocup(codigo, descricao) 
								VALUES ('$codigo1', '$descricao1')")
									or die (mysql_error());	
	mysql_close($db);
?>
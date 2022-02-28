<?php
error_reporting(0);
	$db = mysqli_connect("localhost","root","");
	mysqli_select_db("sistema_saude",$db);
		$codigo1 = $_POST['codigo'];
        $hospital1 = $_POST['hospital'];
		$descricao1 = $_POST['descricao'];
        $cidade1 = $_POST['cidade'];
        $codigo2 = $_POST['codigo2'];
        $codigo3 = $_POST['codigo3'];
        $enfermaria1 = $_POST['enfermaria'];
        $cod_hosp1 = $_POST['cod_hosp'];
        $cod_suds1 = $_POST['cod_suds'];
        $tipo_hosp1 = $_POST['tipo_hosp'];
		$inserir = mysqli_query("INSERT INTO hospital
        (codigo, hospital, descricao, cidade, codigo2, codigo3, enfermaria, cod_hosp, cod_suds, tipo_hosp)
								VALUES 
        ('$codigo1', '$hospital1', '$descricao1', '$cidade1', '$codigo2', '$codigo3', '$enfermaria1', 
            '$cod_hosp1', '$cod_suds1', '$tipo_hosp1')")
				or die (mysqli_error());	
	mysqli_close($db);
?>
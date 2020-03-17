<?php
header('Origin: localhost');
header('Access-Control-Allow-Origin:*');
//---------------importing files from csv
//$csv = array_map('str_getcsv', file('test99.csv'));

$test=array_map('str_getcsv', file('TamboStyle.csv'));
if(strlen($test[6][0])==1){
	$csv=$test;
}
else{
	$csv = array_map(function($v){return str_getcsv($v, ";");}, file('TamboStyle.csv'));
	$header = array_shift($csv);
	$rows    = [];
	foreach($csv as $row) {
		$rows[] = array_combine($header, $row);
	}
	//print_r($csv);
}

/*
foreach ($csv as &$value) {
		//echo $value[0].' '. $value[1].' '. $value[2].' '. $value[3].' '. $value[4].' '. $value[5].' '. $value[6].'<br>';
	}
	//-v can access like this v-
	echo $csv[0][0];
*/
echo json_encode($csv);
?>
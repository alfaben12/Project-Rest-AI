<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://static.pureexample.com/js/flot/excanvas.min.js"></script>
<script src="http://static.pureexample.com/js/flot/jquery.flot.min.js"></script>

<!-- CSS -->
<style type="text/css">
#flotcontainer {
    width: 600px;
    height: 150px;
    text-align: center;
    margin: 0 auto;
}
</style>
</head>
<body>
<?php
//---------------importing files from csv
//$csv = array_map('str_getcsv', file('test99.csv'));

$test=array_map('str_getcsv', file('TamboStyle.csv'));
if(strlen($test[6][0])==1){
	$csv=$test;
}
else{
	$csv = array_map(function($v){return str_getcsv($v, ";");}, file('999.csv'));
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
//print_r($csv);
//print_r(array_filter($csv));

$test2=[];
$test=[];

for($i=3;$i<count($csv);$i++){
	array_push($test2,[]);
	for ($j=2;$j<count($csv[$i]);$j++){
		array_push($test2[$i-3],$csv[$i][$j]);
	}
}

print_r($test2);

$cx=count($test2[0]);
for($i=0;$i<$cx;$i++){
	$t=0;
	for ($j=0;$j<count($test2);$j++){
		$t+=$test2[$j][$i];	
	}
	array_push($test,$t);
}
echo '<br>';
print_r($test);
?>
</body>
</html>
<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://localhost:3002/cores/csv/4c60bb6c-215a-4c88-a0fb-9604853f8ddb,6ef242c6-5821-478c-87de-8cc8a04c1099",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  
  CURLOPT_HTTPHEADER => 
  array(
    'Content-Type: application/json; charset=utf-8',
    'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjYsImdlbmVyYXRlX2F0IjoiVGh1cnNkYXksIEFwcmlsIDE2dGggMjAyMCwgNzowNjozNCBwbSIsImlhdCI6MTU4NzAzODc5NH0.YEPDiRXaD2VPPozsK9ixZUo61gnWYVvkVTn5BbqY7Ko',
  )
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

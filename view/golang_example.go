package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func main() {

	url := "http://localhost:3002/cores/csv/4c60bb6c-215a-4c88-a0fb-9604853f8ddb,6ef242c6-5821-478c-87de-8cc8a04c1099"
	method := "GET"

	client := &http.Client{}
	req, err := http.NewRequest(method, url, nil)
	req.Header.Set("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjYsImdlbmVyYXRlX2F0IjoiVGh1cnNkYXksIEFwcmlsIDE2dGggMjAyMCwgNzowNjozNCBwbSIsImlhdCI6MTU4NzAzODc5NH0.YEPDiRXaD2VPPozsK9ixZUo61gnWYVvkVTn5BbqY7Ko")

	if err != nil {
		fmt.Println(err)
	}
	res, err := client.Do(req)
	defer res.Body.Close()
	body, err := ioutil.ReadAll(res.Body)

	fmt.Println(string(body))
}

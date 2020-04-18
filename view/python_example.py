import requests

url = "http://localhost:3002/cores/csv/4c60bb6c-215a-4c88-a0fb-9604853f8ddb,6ef242c6-5821-478c-87de-8cc8a04c1099"

payload = {}
headers = {
    'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjYsImdlbmVyYXRlX2F0IjoiVGh1cnNkYXksIEFwcmlsIDE2dGggMjAyMCwgNzowNjozNCBwbSIsImlhdCI6MTU4NzAzODc5NH0.YEPDiRXaD2VPPozsK9ixZUo61gnWYVvkVTn5BbqY7Ko',
}

response = requests.request("GET", url, headers=headers, data = payload)

print(response.text.encode('utf8'))

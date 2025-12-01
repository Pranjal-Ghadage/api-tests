# Move to the folder where your collection and environment are
cd "C:\Users\Win\Documents\API_Test"

# Run the collection with environment and HTML report
newman run provider.postman_collection.json.json -e environment.json -r html --reporter-html-export "report.html"

# Open the report automatically in default browser
start .\report.html

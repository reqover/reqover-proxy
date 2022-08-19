docker run -it -p 8080:8080 `
    -e PROJECT_TOKEN=4zjud4ttejxk `
    -e SWAGGER_URL=https://petstore.swagger.io/v2/swagger.json `
    -e BASE_PATH=/v2 `
    -e BRANCH=Master `
    reqover/reqover-proxy --mode reverse:https://petstore.swagger.io

### Reqover proxy 

0. Create project at https://reqover.netlify.app
1. 
2. Start docker container.

- Mind to change PROJECT_TOKEN to your Reqover build id
- Change url https://petstore.swagger.io to your testing server target
- BASE_PATH is optional
- BRANCH is optional

For Linux:
```
docker run -it -p 8080:8080 \
    -e PROJECT_TOKEN=4zjud4ttejxk \
    -e SWAGGER_URL=https://petstore.swagger.io/v2/swagger.json \ 
    -e BASE_PATH=/v2 \
    -e BRANCH=Master \
    reqover/reqover-proxy --mode reverse:https://petstore.swagger.io
```

For Windows:
```
docker run -it -p 8080:8080 `
    -e PROJECT_TOKEN=4zjud4ttejxk `
    -e SWAGGER_URL=https://petstore.swagger.io/v2/swagger.json `
    -e BASE_PATH=/v2 `
    -e BRANCH=Master `
    reqover/reqover-proxy --mode reverse:https://petstore.swagger.io
```

Run using docker-compose from dist folder:

```
cd dist && docker-compose up -d
```

When finish

```
docker-compose down
```

2. Use Postman or any other http client

```
curl --location --request GET 'http://localhost:8080/v2/pet/findByStatus?status=available'
```

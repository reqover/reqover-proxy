### Reqover proxy 

1. Start docker container.

- Mind to change REQOVER_BUILD_ID to your Reqover build id
- Change url https://petstore.swagger.io to your testing server target

```
docker run -it -p 8080:8080 \
-e REQOVER_BUILD_ID=ihaybbek1rmo reqover/reqover-proxy \
--mode reverse:https://petstore.swagger.io
```

2. Use Postman or any other http client

```
curl --location --request GET 'http://localhost:8080/v2/pet/findByStatus?status=available'
```

# Docker go catupiri base image

With common libs and programs used by most go catupiri projects

## How to build and push to repo:

Login in the terminal:
```sh
docker login
```

Build
```sh
docker build -t catupiri/go-catupiri-prod .
```

Test it
```sh
docker run catupiri/go-catupiri-prod ls -al
```

```sh
docker push catupiri/go-catupiri-prod
```


## Licence

MIT
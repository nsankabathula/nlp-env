# nlp-env

## Build
docker build -t user-name/image-name .

## Run
docker run --name container-name -it -v ${PWD}/src:/app/src --rm user-name/image-name
Make PWD has src folder and has rest_api.py file.

## Stop
docker stop container-name
  
  

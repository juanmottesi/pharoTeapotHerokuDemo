# Locally
* `docker build -t heroku-pharo-teapot .`
* `docker run -p 5000:5000 heroku-pharo-teapot`
* go to localhost:5000

# Heroku
* `docker build -t pharo-teapot .`
* `heroku login`
* `heroku container:login`
* `heroku container:push web -a APP_NAME`

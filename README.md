# docker-sinatra
Tiny-ish Sinatra Dockerfile

Chuck the Dockerfile in a directory and build it with:

    docker build -t sinatra .

Then run it with:

    docker run -d -p 4567:4567 -v /path/to/sinatra:/data sinatra

Where /path/to/sinatra contains whatever chunk of ruby you want to run.

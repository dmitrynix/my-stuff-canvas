# Run

```terminal
$ docker run --name=canvas-drk --rm -d -v $(pwd):/usr/share/nginx/html:ro -p 8765:80 nginx
```

Go to [localhost:8765](http://localhost:8765).

Stop:

```terminal
$ docker stop canvas-drk
```

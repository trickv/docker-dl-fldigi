This is an attempt at [dl-fldigi](https://github.com/jamescoxon/dl-fldigi) in a Docker container. It doesn't quite work.

dl-fldigi is notoriously difficult to build probably because:
* It's not hyper-actively maintained
* It's typically run on laptops where people prefer rececnt distributions
* It's a fork of fldigi, which means that the docs for fldigi about building are mildly different
* It uses fltk =)

Since dl-fldigi is a GUI application, and docker will run it as another user, you need to learn how to deal with that, or you'll get errors like "Can't open display:"
Learn a bit here: http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/

I run it like this:
```
./run.sh
```

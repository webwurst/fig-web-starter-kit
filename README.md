fig-web-starter-kit
===================

You need [Docker](http://docs.docker.com/installation/) and [Fig](http://www.fig.sh/install.html) to use this.

Create a development directory and go there.

    $ curl -O https://raw.githubusercontent.com/webwurst/fig-web-starter-kit/master/fig.yml
    $ fig up
    $ xdg-open http://localhost:3000/

    $ fig run wsk wsk_export_source
    $ fig up
    $ xdg-open http://localhost:3000/

Happy Live Hacking.

fig-web-starter-kit
===================

You need [Docker](http://docs.docker.com/installation/) and [Fig](http://www.fig.sh/install.html) beeing installed.

Then create a development directory and go there.

    $ curl -O https://raw.githubusercontent.com/webwurst/fig-web-starter-kit/master/fig.yml
    $ fig up
    $ xdg-open http://localhost:3000/
    
Now you can see the initial example page from the [Google Web Starter Kit](https://developers.google.com/web/starter-kit/) in your Browser.

To get somehing to work on follow these commands:

    $ fig run wsk wsk_export_source
    $ sudo chown $USER:$USER . -R
    $ fig up
    $ xdg-open http://localhost:3000/

Now you can change line 38 in `app/index.html` to something like this:

    <h1 class="logo">Watch <strong>me</strong> now</h1>
    
Watch the browser while saving. Happy Live Hacking! =:D

Maybe you want to follow the tutorial to create [Your First Multi-device Site](https://developers.google.com/web/fundamentals/getting-started/your-first-multi-screen-site/).

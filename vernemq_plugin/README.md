# {{name}}

{{desc}}

You must have a recent version of Erlang installed (it's recommended to use the
same one VerneMQ is compiled for, typically > 17). To compile run:

    rebar3 compile

Then enable the plugin using:

    vmq-admin plugin enable --name {{name}} --path <PathToYourPlugin>/{{name}}/_build/default

The ``<PathToYourPlugin>`` should be accessible by VerneMQ (file permissions).

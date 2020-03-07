# rebar3_template_vernemq

This repo provides a [rebar3](http://rebar3.org) template for easier creation of [VerneMQ](https://vernemq.com) plugins.

## Setup

To install, simply clone to `~/.config/rebar3/templates`:

```
mkdir -p ~/.config/rebar3/templates
git clone https://github.com/redclawtech/rebar3_template_vernemq.git ~/.config/rebar3/templates/rebar3_template_vernemq
```

## Usage

```console
$ rebar3 new vernemq_plugin name=vmq_coolplugin
$ cd vmq_coolplugin
```

### Options (aka. variables)

To see a full description of all the options available, you can run `rebar3 new help vernemq_plugin`:

```console
$ rebar3 new help vernemq_plugin
vernemq_plugin:
        custom template (~/.config/rebar3/templates/rebar3_template_vernemq/vernemq_plugin.template)
        Description: Generates a VerneMQ Plugin
        Variables:
                name="my_plugin" (Name for the VerneMQ Plugin)
                desc="A VerneMQ plugin" (Short description if the VerneMQ plugin)
                license="Apache 2.0" (License to use for this Plugin)
                no_mqtt_three=false (Do not make the plugin support MQTT 3.1 hooks)
                no_mqtt_five=false (Do not make the plugin support MQTT 5 hooks)
                date="2020-03-07"
                datetime="2020-03-07T02:05:05+00:00"
                author_name="Dairon Medina Caro"
                author_email="dairon@gooee.com"
                copyright_year="2020"
                apps_dir="apps" (Directory where applications will be created if needed)
```

## License

Copyright (c) 2020 [RedClaw Technologies](http://www.redclawtech.com)

This work is free. You can redistribute it and/or modify it under the
terms of the Apache License, Version 2.0. See the [LICENSE](LICENSE) file for more details.

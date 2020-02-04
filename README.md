# rebar3_template_vernemq

This repo provides a [rebar3](http://rebar3.org) template easier creation of [VerneMQ](https://vernemq.com) plugins.

## Setup

To install simply clone to `~/.config/rebar3/templates`:

```
mkdir -p ~/.config/rebar3/templates
git clone https://github.com/redclawtech/rebar3_template_vernemq.git ~/.config/rebar3/templates/rebar3_template_vernemq
```

## Usage

```
$ rebar3 new vernemq_plugin name=mycoolplugin
$ cd mycoolplugin
```

## License

Copyright (c) 2020 RedClaw Technologies

This work is free. You can redistribute it and/or modify it under the
terms of the Apache License, Version 2.0. See the [LICENSE](LICENSE) file for more details.
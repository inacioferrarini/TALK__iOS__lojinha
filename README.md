# lojinha

This is a simple app, used to support a talk about submodules and coordinator usage on iOS platform.

To keep it organized and modular, it is used git submodules.

# To clone
You can clone all at once

```bash
$ git clone --recursive https://github.com/inacioferrarini/lojinha.git
```

Or, clone it and then update its submodules

```bash
$ git clone https://github.com/inacioferrarini/lojinha.git
$ git submodule init
$ git submodule update
```

# Updating local code after clone

```bash
$ git pull --recurse-submodules
```

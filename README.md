# Setup script

Setup script for unix environments.
Installs tools like vim, zsh and configures those.

## HowTo

One-Liner

```shell
apt-get update & apt-get install git && git clone https://github.com/capital-G/capitalg_setup.git && cd capitalg_setup && ./setup_debian.sh
```

More explained

* Clone this repository via
  
  ```shell
  git clone git@github.com:capital-G/capitalg_setup.git
  ```

  or if you are behind a SSH banning firewall use https

  ```shell
  git clone https://github.com/capital-G/capitalg_setup.git
  ```

* Run

  ```shell
  cd capitalg_setup && ./setup_debian.sh
  ```

## ToDo

* Include non debian setup
* Setup i3wm

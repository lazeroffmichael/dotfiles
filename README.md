# dotfiles

Using `stow`, this symlinks all of my configuration files into the appropriate places in the file system.

## Usage

> You will have to have `stow` installed, see the next section for more information if this is not installed

Clone this repo in your $HOME directory:
```
git clone https://github.com/lazeroffmichael/dotfiles.git $HOME/dotfiles
```

Run the `./install` script:
```
./install
```

### Cleanup

Run the `clean` script:
```
./clean
```

## Installing `stow`

> Note, `stow` version 2.3.1 is broken, you need to use stow version 2.4.1 or greater.

### Debian/Ubuntu

Check which verison is available to install from the current archives:

```
sudo apt show stow
```

If the version is not 2.4.1 or greater, we will install from one of the future release archives:

```
sudo vim /etc/apt/sources.list
```

Add the following to the bottom of the file:

```
deb http://archive.ubuntu.com/ubuntu/ questing main universe multiverse restricted
deb http://archive.ubuntu.com/ubuntu/ questing-updates main universe multiverse restricted
deb http://archive.ubuntu.com/ubuntu/ questing-security main universe multiverse restricted
```

Then upgrade:

```
sudo apt update && sudo apt upgrade -y
sudo apt install stow
```

### RHEL

If you are on a RHEL based distro (but not running Fedora), it might be best to just compile from source to get the latest version:

```
sudo dnf install perl -y
wget https://ftp.gnu.org/gnu/stow/stow-latest.tar.gz
tar -xvpzf stow-latest.tar.gz
cd stow-<x.y.z>
./configure
```

If after the `./configure` step it cannot find some of the test modules:

```
cpan
install <package>
```

Then run:

```
sudo make
sudo make install
```

## `zsh`

Make sure you have zsh installed with `zsh --version`. Make sure this is your default shell with `echo $0`.

The `install` script will download `oh-my-zsh` automatically.

## `tmux`

When starting up `tmux`, do a `<prefix>I` to install the appropriate plugins with TPM.

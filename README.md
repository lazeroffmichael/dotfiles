# dotfiles

Using `stow`, this symlinks all of my configuration files into the appropriate places in the file system.

## Usage

> You will have to have `stow` installed, see the next section for more information if this is not installed

Clone this repo in your $HOME directory:
```
git clone https://github.com/lazeroffmichael/dotfiles.git $HOME/dotfiles
```

Run the `stowInstall.sh` script:
```
./stowInstall
```

### Cleanup

Run the `stowClean.sh` script:
```
./stowClean
```

## Installing `stow`

If you are on a Debian based distro, just do:

```
sudo apt install stow
```

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

## `tmux`

When starting up `tmux`, do a `<prefix>I` to install the appropriate plugins with TPM.

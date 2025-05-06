# cloud-init

* terminfo for ghostty, run on mac:

  ```bash
  infocmp -x | ssh debian@orb -- tic -x -
  ```

* copy init-dotfiles.sh to OrbStack:

  ```bash
  scp ./init-dotfiles.sh akiwu@debian@orb:/home/akiwu/
  ```

* use docker inside orbstack machine

  ```bash
  mac link docker
  ```

  if "permission denied" error happened. try:

  ```bash
  sudo /opt/orbstack-guest/bin/macctl link docker

  sudo chmod 666 /opt/orbstack-guest/run/hcontrol.sock
  sudo chmod 666 /opt/orbstack-guest/run/hostssh.sock
  ```

# cloud-init

* terminfo for ghostty, run on mac:

  ```bash
  infocmp -x | ssh debian@orb -- tic -x -
  ```

* run init-dotfiles.sh:

  ```bash
  ~/init-dotfiles.sh
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

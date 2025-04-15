# cloud-init

* terminfo for ghostty, run on mac:

  ```bash
  infocmp -x | ssh debian3@orb -- tic -x -
  ```

* copy init-dotfiles.sh to OrbStack:

  ```bash
  scp ./init-dotfiles.sh akiwu@debian2@orb:/home/akiwu/
  ```

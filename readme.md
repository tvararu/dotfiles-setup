## dotfiles install server.

This is a lightweight `express` server that will simply serve the contents of `install.sh` at the specified port.

It's deployed at `http://setup.vararu.me` through [dokku](https://github.com/progrium/dokku).

### Rolling your own

If you want to mimic my setup, you'll need the following:

- A dotfiles repo that respects [my format](https://github.com/tvararu/dotfiles): aka, any repo that simply has a `install.sh` in the root.
- A domain, preferably.
- A machine running dokku. [DigitalOcean have a nice guide for this](https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-dokku-application).

Assuming that your domain is `myname.me` and your dotfiles are at `github.com/myname/dotfiles`, clone this repo:

```bash
$ git clone https://github.com/tvararu/dotfiles-setup
$ cd dotfiles-setup
```

Edit the `install.sh` file, replacing the `curl` URL with the one leading to your dotfile repo's tarball. Commit, and then add your dokku git remote:

```bash
$ git remote add dokku dokku@myname.me:setup
$ git push dokku master
```

Done! Your dotfiles should now be installable by running `curl setup.myname.me | sh`.

### License

MIT.

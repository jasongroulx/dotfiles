# dotfiles


### Setting up your Mac

* Update macOS to the latest version with the App Store
* Install Xcode from the App Store, open it and accept the license agreement
* Install macOS Command Line Tools by running `xcode-select --install`
* Run `sudo xcodebuild -license` to aggree to the Xcode/iOS license
* Do any pending OSX updates
* If you haven't launched Xcode after updating it, do so now. Xcode will ask for permission to install additional components. Let it install those components.
* Copy your public and private SSH keys to ~/.ssh and make sure they're set to 600
* Clone this repo to ~/.dotfiles
* Append /usr/local/bin/zsh to the end of your /etc/shells file
* Run `install.sh` to start the installation

### Resources
* [Dries Vints's Dotfiles](https://github.com/driesvints/dotfiles)
* [Change Macos User Preferences Via Command Line](https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/)

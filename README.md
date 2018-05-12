# dotfiles

This is my dotfiles repo. You're welcome to use it, but I would highly recommend setting up an environment that is tailored for yourself. To build this, I borrowed from a lot of different repos and did a lot of tweaking. I'd recommend you do the same.

I especially recommend against copying anything that configures vim or tmux. I've been experimenting with these but have not landed on something I'm super happy with.

## Files

I don't know what the typical setup is and I'm sure I could improve on this, but here's a short explanation of what the files included are:

- `install.sh`: This runs all of the install scripts in `install-scripts/`
- `brew-list.sh`: Generates the list of stuff in my Brewfile for the readme
- `Brewfile`: All my Brew stuff
- `apps/`: Config for various applications that isn't well represented by dotfile stuff
- `bin/`: Intentionally left empty and gitignored, I have some private scripts in there
- `home/`: Everything in here gets symlinked into `~`
- `install-scripts`: Various scripts to get my environment up and running

### `home/.aws/`
This contains some basic AWS config for the official AWS CLI.

### `home/.aliases`
- `ls`: Aliased to the excellent `exa`
- `aliases`: Prints out all aliases and functions
- `apk-version`: Reads the version number of an APK located at $APK_DIR/android-release.apk
- `point-master`: Runs git fetch and then checks out the head commit. I only use this for submodules
- `ipl`: Run `yarn install` without touching the lockfile
- `build-android`: Just an easy alias to clean + build Android projects
- `s`: `git status`
- `d`: `git diff`
- `less`: Less, but with syntax highlighting
- `more`: `less`
- `hcat`: Cat, but with syntax highlighting
- `ag`: Make ag include ~/.ignore by default
- `J`: Pipe something to `jq`. Example: `cat thing.json J`

### `home/.exports`
This is just some basic environment setup and stuff that I didn't want to stick elsewhere.

### `home/.functions`
- `android-version`: Prints the version of an APK at the specified path
- `ctx`: Without a parameter provided, lists kubectl contexts. With a parameter provided, switches to that context.
- `reload-zsh`: Clears all functions/aliases and then sources .zshrc
- `fh`: Fuzzy search of recent command history, selecting one loads it into the prompt
- `fco` Fuzzy search of git branches and tags, selecting one checks it out
- `fshow`: Fuzzy search of git logs

### `home/.gitconfig`
Mostly only useful for the aliases:

- `git graph`: Git logs output as a colorful graph
- `git rbc`: `git rebase --continue`
- `git co`: `git checkout`
- `git ec`: `git config --global -e` (opens the config file to be edited)
- `git ds`: `git diff --staged`
- `git local-branches`: Prints a list of branches that have not been pushed
- `git cp`: `git cherry-pick`
- `git cpc`: `git cherry-pick --continue`
- `git cpa`: `git cherry-pick --abort`
- `git smu`: `git submodule update`
- `git smui`: `git submodule update --init`
- `git smuir`: `git submodule update --init --recursive`
- `git logs`: Git logs in the format I prefer reading them
- `git ptags`: `git push && git push --tags`
- `git fetch-master`: Does the same thing as the `point-master` from `.aliases`
- `git cm`: `git commit -m`

### `home/.taskwarrior_fns`
These are just functions specific to Taskwarrior that I wanted to separate out.

## Brewfile
Here's an auto-generated list of the stuff in my Brewfile. I haven't figured out how to parse out casks or mas installs.

- [`android-platform-tools`](https://developer.android.com/sdk): Tools for the Android SDK
- [`awscli`](https://aws.amazon.com/cli/): Official Amazon AWS command-line interface
- [`carthage`](https://github.com/Carthage/Carthage): Decentralized dependency manager for Cocoa
- [`cmake`](https://www.cmake.org/): Cross-platform make
- [`cocoapods`](https://cocoapods.org/): Dependency manager for Cocoa projects
- [`curl`](https://curl.haxx.se/): Get a file from an HTTP, HTTPS or FTP server
- [`docker-clean`](https://github.com/ZZROTDesign/docker-clean): Clean Docker containers, images, networks, and volumes
- [`exa`](https://the.exa.website): Modern replacement for 'ls'
- [`exiftool`](https://www.sno.phy.queensu.ca/~phil/exiftool/index.html): Perl lib for reading and writing EXIF metadata
- [`fd`](https://github.com/sharkdp/fd): Simple, fast and user-friendly alternative to find
- [`fzf`](https://github.com/junegunn/fzf): Command-line fuzzy finder written in Go
- [`git`](https://git-scm.com): Distributed revision control system
- [`git-lfs`](https://github.com/git-lfs/git-lfs): Git extension for versioning large files
- [`glances`](https://nicolargo.github.io/glances/): Alternative to top/htop
- [`gnupg`](https://gnupg.org/): GNU Pretty Good Privacy (PGP) package
- [`gradle`](https://www.gradle.org/): Build system based on the Groovy language
- [`html-xml-utils`](https://www.w3.org/Tools/HTML-XML-utils/): Tools for manipulating HTML and XML files
- [`ideviceinstaller`](https://www.libimobiledevice.org/): Cross-platform library for communicating with iOS devices
- [`imagemagick`](https://www.imagemagick.org/): Tools and libraries to manipulate images in many formats
- [`ios-deploy`](https://github.com/phonegap/ios-deploy): Install and debug iPhone apps from the command-line
- [`ios-webkit-debug-proxy`](https://github.com/google/ios-webkit-debug-proxy): DevTools proxy for iOS devices
- [`jq`](https://stedolan.github.io/jq/): Lightweight and flexible command-line JSON processor
- [`kubernetes-cli`](https://kubernetes.io/): Kubernetes command-line interface
- [`libimobiledevice`](https://www.libimobiledevice.org/): Library to communicate with iOS devices natively
- [`make`](https://www.gnu.org/software/make/): Utility for directing compilation
- [`mas`](https://github.com/mas-cli/mas): Mac App Store command-line interface
- [`python@2`](https://www.python.org/): Interpreted, interactive, object-oriented programming language
- [`ranger`](https://ranger.github.io): File browser
- [`rbenv`](https://github.com/rbenv/rbenv#readme): Ruby version manager
- [`sqlite`](https://sqlite.org/): Command-line interface for SQLite
- [`task`](https://taskwarrior.org/): Feature-rich console based todo list manager
- [`tasksh`](https://tasktools.org/projects/tasksh.html): Shell wrapper for Taskwarrior commands
- [`the_silver_searcher`](https://github.com/ggreer/the_silver_searcher): Code-search similar to ack
- [`tig`](https://jonas.github.io/tig/): Text interface for Git repositories
- [`tree`](http://mama.indstate.edu/users/ice/tree/): Display directories as trees (with optional color/HTML output)
- [`visidata`](http://visidata.org/): Terminal utility for exploring and arranging tabular data
- [`wget`](https://www.gnu.org/software/wget/): Internet file retriever
- [`yarn`](https://yarnpkg.com/): JavaScript package manager

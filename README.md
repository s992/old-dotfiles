# dotfiles

This is my dotfiles repo. You're welcome to use it, but I would highly recommend setting up an environment that is tailored for yourself. To build this, I borrowed from a lot of different repos and did a lot of tweaking. I'd recommend you do the same.

I especially recommend against copying anything that configures vim or tmux. I've been experimenting with these but have not landed on something I'm super happy with.

## Files

I don't know what the typical setup is and I'm sure I could improve on this, but here's a short explanation of what the files included are:

- `install.sh`: This runs all of the install scripts in `install-scripts/`
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
- `cat`: Cat, but with syntax highlighting
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


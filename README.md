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

- [`asciinema`](https://asciinema.org): Record and share terminal sessions
- [`automake`](https://www.gnu.org/software/automake/): Tool for generating GNU Standards-compliant Makefiles
- [`awscli`](https://aws.amazon.com/cli/): Official Amazon AWS command-line interface
- [`bat`](https://github.com/sharkdp/bat): Clone of cat(1) with syntax highlighting and Git integration
- [`bazel`](https://bazel.build/): Google's own build tool
- [`boost`](https://www.boost.org/): Collection of portable C++ source libraries
- [`buku`](https://github.com/jarun/Buku): Powerful command-line bookmark manager
- [`carthage`](https://github.com/Carthage/Carthage): Decentralized dependency manager for Cocoa
- [`ceres-solver`](http://ceres-solver.org/): C++ library for large-scale optimization
- [`cgal`](https://www.cgal.org/): Computational Geometry Algorithm Library
- [`cheat`](https://github.com/cheat/cheat): Create and view interactive cheat sheets for *nix commands
- [`cmake`](https://www.cmake.org/): Cross-platform make
- [`cocoapods`](https://cocoapods.org/): Dependency manager for Cocoa projects
- [`coreutils`](https://www.gnu.org/software/coreutils): GNU File, Shell, and Text utilities
- [`desk`](https://github.com/jamesob/desk): Lightweight workspace manager for the shell
- [`dex2jar`](https://github.com/pxb1988/dex2jar): Tools to work with Android .dex and Java .class files
- [`diff-so-fancy`](https://github.com/so-fancy/diff-so-fancy): Good-lookin' diffs with diff-highlight and more
- [`dive`](https://github.com/wagoodman/dive/): A tool for exploring each layer in a docker image
- [`docker-clean`](https://github.com/ZZROTDesign/docker-clean): Clean Docker containers, images, networks, and volumes
- [`eigen`](https://eigen.tuxfamily.org/): C++ template library for linear algebra
- [`elixir`](https://elixir-lang.org/): Functional metaprogramming aware language built on Erlang VM
- [`exa`](https://the.exa.website): Modern replacement for 'ls'
- [`exiftool`](https://www.sno.phy.queensu.ca/~phil/exiftool/index.html): Perl lib for reading and writing EXIF metadata
- [`fd`](https://github.com/sharkdp/fd): Simple, fast and user-friendly alternative to find
- [`ffmpeg`](https://ffmpeg.org/): Play, record, convert, and stream audio and video
- [`fpp`](https://facebook.github.io/PathPicker/): CLI program that accepts piped input and presents files for selection
- [`fzf`](https://github.com/junegunn/fzf): Command-line fuzzy finder written in Go
- [`gawk`](https://www.gnu.org/software/gawk/): GNU awk utility
- [`gdal`](https://www.gdal.org/): Geospatial Data Abstraction Library
- [`git`](https://git-scm.com): Distributed revision control system
- [`git-delta`](https://github.com/dandavison/delta): A syntax-highlighting pager for git
- [`git-lfs`](https://github.com/git-lfs/git-lfs): Git extension for versioning large files
- [`git-madge`](https://github.com/jez/git-madge): Git-aware madge wrapper
- [`glances`](https://nicolargo.github.io/glances/): Alternative to top/htop
- [`glew`](https://glew.sourceforge.io/): OpenGL Extension Wrangler Library
- [`glfw`](https://www.glfw.org/): Multi-platform library for OpenGL applications
- [`glslviewer`](http://patriciogonzalezvivo.com/2015/glslViewer/): Live-coding console tool that renders GLSL Shaders
- [`gmp`](https://gmplib.org/): GNU multiple precision arithmetic library
- [`gnu-getopt`](https://github.com/karelzak/util-linux): Command-line option parsing utility
- [`gnupg`](https://gnupg.org/): GNU Pretty Good Privacy (PGP) package
- [`go`](https://golang.org): Open source programming language to build simple/reliable/efficient software
- [`gotop`](https://github.com/cjbassi/gotop): A terminal based graphical activity monitor inspired by gtop and vtop
- [`gradle`](https://www.gradle.org/): Open-source build automation tool based on the Groovy and Kotlin DSL
- [`graphicsmagick`](http://www.graphicsmagick.org/): Image processing tools collection
- [`graphviz`](https://www.graphviz.org/): Graph visualization software from AT&T and Bell Labs
- [`grip`](https://github.com/joeyespo/grip): GitHub Markdown previewer
- [`gtk+3`](https://gtk.org/): Toolkit for creating graphical user interfaces
- [`hexyl`](https://github.com/sharkdp/hexyl): Command-line hex viewer
- [`highlight`](http://www.andre-simon.de/doku/highlight/en/highlight.php): Convert source code to formatted text with syntax highlighting
- [`html-xml-utils`](https://www.w3.org/Tools/HTML-XML-utils/): Tools for manipulating HTML and XML files
- [`httpie`](https://httpie.org/): User-friendly cURL replacement (command-line HTTP client)
- [`hub`](https://hub.github.com/): Add GitHub support to git on the command-line
- [`ideviceinstaller`](https://www.libimobiledevice.org/): Cross-platform library for communicating with iOS devices
- [`imagemagick`](https://www.imagemagick.org/): Tools and libraries to manipulate images in many formats
- [`infer`](https://fbinfer.com/): Static analyzer for Java, C, C++, and Objective-C
- [`ios-deploy`](https://github.com/phonegap/ios-deploy): Install and debug iPhone apps from the command-line
- [`ios-webkit-debug-proxy`](https://github.com/google/ios-webkit-debug-proxy): DevTools proxy for iOS devices
- [`irssi`](https://irssi.org/): Modular IRC client
- [`jpeg`](https://www.ijg.org/): Image manipulation library
- [`jq`](https://stedolan.github.io/jq/): Lightweight and flexible command-line JSON processor
- [`ktlint`](https://github.com/shyiko/ktlint): Kotlin linter
- [`kubernetes-cli`](https://kubernetes.io/): Kubernetes command-line interface
- [`lame`](https://lame.sourceforge.io/): High quality MPEG Audio Layer III (MP3) encoder
- [`libffi`](https://sourceware.org/libffi/): Portable Foreign Function Interface library
- [`libomp`](https://openmp.llvm.org/): LLVM's OpenMP runtime library
- [`libxml2`](http://xmlsoft.org/): GNOME XML library
- [`libyaml`](https://github.com/yaml/libyaml): YAML Parser
- [`lynx`](https://invisible-island.net/lynx/): Text-based web browser
- [`macvim`](https://github.com/macvim-dev/macvim): GUI for vim, made for macOS
- [`mas`](https://github.com/mas-cli/mas): Mac App Store command-line interface
- [`mdcat`](https://github.com/lunaryorn/mdcat): Show markdown documents on text terminals
- [`navi`](https://github.com/denisidoro/navi): Interactive cheatsheet tool for the command-line
- [`neovim`](https://neovim.io/): Ambitious Vim-fork focused on extensibility and agility
- [`ninja`](https://ninja-build.org/): Small build system for use with gyp or CMake
- [`nvm`](https://github.com/creationix/nvm): Manage multiple Node.js versions
- [`opencv`](https://opencv.org/): Open source computer vision library
- [`openssl`](https://openssl.org/): SSL/TLS cryptography library
- [`pass`](https://www.passwordstore.org/): Password manager
- [`peco`](https://github.com/peco/peco): Simplistic interactive filtering tool
- [`pidcat`](https://github.com/JakeWharton/pidcat): Colored logcat script to show entries only for specified app
- [`pigz`](https://zlib.net/pigz/): Parallel gzip
- [`pkg-config`](https://freedesktop.org/wiki/Software/pkg-config/): Manage compile and link flags for libraries
- [`postgresql`](https://www.postgresql.org/): Object-relational database system
- [`protobuf`](https://github.com/protocolbuffers/protobuf/): Protocol buffers (Google's data interchange format)
- [`python@2`](https://www.python.org/): Interpreted, interactive, object-oriented programming language
- [`q`](https://github.com/harelba/q): Treat text as a database
- [`qt`](https://www.qt.io/): Cross-platform application and UI framework
- [`r`](https://www.r-project.org/): Software environment for statistical computing
- [`ranger`](https://ranger.github.io): File browser
- [`rclone`](https://rclone.org/): Rsync for cloud storage
- [`readline`](https://tiswww.case.edu/php/chet/readline/rltop.html): Library for command-line editing
- [`reattach-to-user-namespace`](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard): Reattach process (e.g., tmux) to background
- [`rename`](http://plasmasturm.org/code/rename): Perl-powered file rename script with many helpful built-ins
- [`restic`](https://restic.github.io/): Fast, efficient and secure backup program
- [`ripgrep`](https://github.com/BurntSushi/ripgrep): Search tool like grep and The Silver Searcher
- [`rtv`](https://github.com/michael-lazar/rtv): Command-line Reddit client
- [`rust`](https://www.rust-lang.org/): Safe, concurrent, practical language
- [`sourcekitten`](https://github.com/jpsim/SourceKitten): Framework and command-line tool for interacting with SourceKit
- [`sqlite`](https://sqlite.org/): Command-line interface for SQLite
- [`starship`](https://starship.rs): The cross-shell prompt for astronauts
- [`swift-protobuf`](https://github.com/apple/swift-protobuf): Plugin and runtime library for using protobuf with Swift
- [`swiftlint`](https://github.com/realm/SwiftLint): Tool to enforce Swift style and conventions
- [`task`](https://taskwarrior.org/): Feature-rich console based todo list manager
- [`tasksh`](https://tasktools.org/projects/tasksh.html): Shell wrapper for Taskwarrior commands
- [`the_silver_searcher`](https://github.com/ggreer/the_silver_searcher): Code-search similar to ack
- [`thefuck`](https://github.com/nvbn/thefuck): Programatically correct mistyped console commands
- [`tig`](https://jonas.github.io/tig/): Text interface for Git repositories
- [`tmux`](https://tmux.github.io/): Terminal multiplexer
- [`tree`](http://mama.indstate.edu/users/ice/tree/): Display directories as trees (with optional color/HTML output)
- [`vim`](https://www.vim.org/): Vi 'workalike' with many additional features
- [`visidata`](https://visidata.org/): Terminal utility for exploring and arranging tabular data
- [`watchman`](https://github.com/facebook/watchman): Watch files and take action when they change
- [`wget`](https://www.gnu.org/software/wget/): Internet file retriever
- [`x264`](https://www.videolan.org/developers/x264.html): H.264/AVC encoder
- [`xvid`](https://labs.xvid.com/): High-performance, high-quality MPEG-4 video library
- [`yabai`](https://github.com/koekeishiya/yabai): A tiling window manager for macOS based on binary space partitioning.
- [`yq`](https://github.com/mikefarah/yq): Process YAML documents from the CLI
- [`yvm`](https://yvm.js.org): Manage multiple versions of Yarn
- [`zlib`](https://zlib.net/): General-purpose lossless data-compression library
- [`zplug`](https://zplug.sh/): The next-generation plugin manager for zsh
- [`zsh`](https://www.zsh.org/): UNIX shell (command interpreter)
- [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions): Fish-like fast/unobtrusive autosuggestions for zsh
- [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting): Fish shell like syntax highlighting for zsh
- [`zstd`](https://facebook.github.io/zstd/): Zstandard is a real-time compression algorithm


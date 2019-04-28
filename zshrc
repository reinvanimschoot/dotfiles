########################
######### KEYS #########
########################

# PRISMA
export PRISMA_MANAGEMENT_API_SECRET=cells_interlinked

########################
######## EXPORTS #######
########################

# ANDROID
export ANDROID_SDK="$HOME/Library/Android/sdk"
export ANDROID_SDK_TOOLS="$ANDROID_SDK/tools"
export ANDROID_SDK_TOOLS_BIN="$ANDROID_SDK_TOOLS/bin"
export ANDROID_PLATFORM_TOOLS="$ANDROID_SDK/platform-tools"

export PATH="$PATH:$ANDROID_SDK:$ANDROID_SDK_TOOLS"
export PATH="$PATH:$ANDROID_SDK_TOOLS_BIN:$ANDROID_PLATFORM_TOOLS"

########################
######## PLUGINS #######
########################

# FUZZY FINDER
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NODE VERSION MANANGER
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# CHRUBY
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.5.1

# PURE PROMPT
autoload -U promptinit; promptinit

PURE_GIT_DOWN_ARROW=⬇
PURE_GIT_UP_ARROW=⬆

prompt pure

########################
######## HISTORY #######
########################

setopt APPEND_HISTORY 		        # Allow multiple terminal sessions to all append to one zsh command history
setopt EXTENDED_HISTORY 	        # Save timestamp of command and duration
setopt INC_APPEND_HISTORY 	      # Add commands as they are typed, don't wait until shell exit

setopt HIST_EXPIRE_DUPS_FIRST	    # when trimming history, lose oldest duplicates first
setopt HIST_IGNORE_DUPS		        # Do not write events to history that are duplicates of previous events
setopt HIST_IGNORE_SPACE	        # Remove command line from history list when first character on the line is a space
setopt HIST_FIND_NO_DUPS	        # When searching history, don't display results already cycled through twice
setopt HIST_SAVE_NO_DUPS	        # Do not write a duplicate event to the history file

setopt HIST_REDUCE_BLANKS	        # Remove extra blanks from each command line being added to history
setopt HIST_VERIFY		            # Don't execute, just expand history
setopt SHARE_HISTORY		          # Imports new commands and appends typed commands to history

HISTSIZE=10000			              # The maximum number of events to save in the internal history
SAVEHIST=10000 			              # The maximum number of events to save in the history file

HISTFILE=~/.zhistory 		          # Sets history file

########################
######## COLORS ########
########################

autoload -U colors                # makes color constants available
colors

export CLICOLOR=1                 # enable colored output from ls, etc. on FreeBSD-based systems

########################
######## OPTIONS #######
########################

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export VISUAL=vim
export EDITOR=$VISUAL

setopt ALWAYS_TO_END		                # Move cursor to the end of a completed word
setopt AUTO_MENU		                    # Show completion menu on a successive tab press
setopt AUTO_LIST  		                  # Automatically list choices on ambiguous completion
setopt AUTO_NAME_DIRS 		              # Any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt AUTO_PARAM_SLASH		              # If completed parameter is a directory, add a slash

unsetopt MENU_COMPLETE		              # Do not autoselect the first completion 

autoload -Uz compinit && compinit -i 	  # Load and initialize the completion system

setopt no_beep 				                  # Don't beep on error

setopt AUTO_CD 				                  # If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt CDABLEVARS 			                # If argument to cd is the name of a parameter whose value is a valid directory, it will become the current directory
setopt PUSHD_IGNORE_DUPS 		            # Don't push multiple copies of the same directory onto the directory stack

setopt EXTENDED_GLOB 			              # Treat #, ~, and ^ as part of patterns for filename generation

unsetopt CORRECT 				                # Disable spelling correction for commands
unsetopt CORRECTALL 			              # Disable spelling correction for arguments

# Match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Make the list prompt friendly
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'

########################
######## ALIASES #######
########################

# FOLDERS
alias c='cd ~/code'

# YARN
alias yga='yarn global add'
alias ya='yarn add'
alias yad='yarn add -D'
alias yrm='yarn remove'
alias ys='yarn start --reset-cache'

# REACT NATIVE
alias run-ios='react-native run-ios'
alias run-android='react-native run-android'

# FASTLANE
alias fastlane='bundle exec fastlane'

# GENERAL
alias rm='rm -rf ~/.Trash'
alias ls='ls -a'
alias tr='tree'


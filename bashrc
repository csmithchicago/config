

# added by Anaconda 2.3.0 installer
export PATH="/Users/CSmith/anaconda/bin:$PATH"

# added for CUDA
#export PATH=/Developer/NVIDIA/CUDA-7.5/bin/${PATH:+:${PATH}}
# export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.5/lib/\
# 		${DYLD_LIBRARY_PATH:+:${DYLD_LIBRARY_PATH}}

export CXXFLAGS='--std=c++11'
export PS1='\d \u: \w $ '

# Setting colour scheme 
export CLICOLOR=1 # turns on file color
export LSCOLORS=ExFxCxDxBxEGEDABAGACAD # lightens file colors
export TERM="xterm-256color" # not useful as far as I can tell

alias ls='ls -GFh'

alias midway='ssh -X coreys@midway.rcc.uchicago.edu'
alias midway2='ssh -X coreys@midway2.rcc.uchicago.edu'
alias siraf='ssh -X coreys@siraf-login.bsd.uchicago.edu'
alias siraf_offcampus='ssh -X coreys@siraf-login.bsd.uchicago.edu -p 22210'
alias em='emacs'

alias skim='/Applications/Skim.app/Contents/MacOS/Skim'


unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

#up
bind-key k select-pane -U
#down
bind-key j select-pane -D
#left
bind-key h select-pane -L
#right
bind-key l select-pane -R
#next window
bind-key n next 
#prev window
bind-key p prev

bind ^z run "tmux-zoom"
# # Keep your finger on ctrl, or don't, same result
# bind-key C-d detach-client
# bind-key C-p paste-buffer
# 
# set -g mode-mouse on
# set -g mouse-select-pane on
# #setw -g mode-keys vi
# ###########################################################################
# # Scrollback / pastebuffer
# 
# # Vim-style copy/paste
# unbind [
# bind y copy-mode
# unbind p
# bind p paste-buffer
# bind -t vi-copy v begin-selection
# bind -t vi-copy y copy-selection
# bind -t vi-copy Escape cancel
# 
# ###########################################################################
# # Mouse mode
# 
# set -g mode-mouse on
# set -g mouse-resize-pane on
# set -g mouse-select-pane on
# set -g mouse-select-window on
# 
# # Toggle mouse on
# bind m \
#     set -g mode-mouse on \;\
#     set -g mouse-resize-pane on \;\
#     set -g mouse-select-pane on \;\
#     set -g mouse-select-window on \;\
#     display 'Mouse: ON'
# 
# # Toggle mouse off
# bind M \
#     set -g mode-mouse off \;\
#     set -g mouse-resize-pane off \;\
#     set -g mouse-select-pane off \;\
#     set -g mouse-select-window off \;\
#     display 'Mouse: OFF']

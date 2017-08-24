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

# resize pane
bind -r > resize-pane -R
bind -r < resize-pane -L
bind -r - resize-pane -D
bind -r + resize-pane -U
bind-key = select-layout even-vertical
bind-key ] select-layout even-horizontal

# Break or kill pane
bind-key b break-pane
bind-key q kill-pane
bind-key C-q kill-session

# Vi copypaste mode
set-window-option -g mode-keys vi
#bind-key -t vi-copy 'v' begin-selection
#bind-key -t vi-copy 'y' copy-selection

# Activity monitoring
setw -g monitor-activity on
set -g visual-activity on

# easily toggle synchronization (mnemonic: e is for echo)
# sends input to all panes in a given window.
bind e setw synchronize-panes on
bind E setw synchronize-panes off

# use vi mode
setw -g mode-keys vi
set -g status-keys vi


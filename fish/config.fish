if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias ll="exa -l -g --icons"
#alias vi="nvim"
#alias vim="nvim"

export EDITOR='vim'

set -g theme_gruvbox dark
set -g theme_display_git no
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_default_branch yes
set -g theme_git_default_branches master main
set -g theme_git_worktree_support yes
set -g theme_use_abbreviated_branch_name yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_k8s_context yes
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_nix no
set -g theme_display_ruby no
set -g theme_display_node yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_date_timezone America/Los_Angeles
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '

#set -g fish_cursor_default line
#set -g fish_cursor_insert line
#set -g fish_cursor_replace_one line
#set -g fish_cursor_visual line


#triton jethrokuan/fzf
set -U FZF_COMPLETE 2
set -U FZF_FIND_FILE_COMMAND "ag -l --hidden --ignore .git"
set -U FZF_DEFAULT_OPTS "--height 40% --layout=reverse --border"


#function set_mode_pre_execution --on-event fish_preexec
#    set command (expr $argv : '\([^ ]*\).*')
#    set -g __last_fish_bind_mode $fish_bind_mode
#    if test $command = 'node'
#        or echo $command | grep 'python' >/dev/null ^/dev/null
#    else
#        printf '\e]50;CursorShape=0\x7'
#    end
#end
#function set_mode_post_execution --on-event fish_postexec
#    set temp $__last_fish_bind_mode
#    set -e __last_fish_bind_mode
#    set -g fish_bind_mode $temp
#    fish_vi_cursor
#end
#function fish_vi_cursor --on-variable fish_bind_mode
#    if set -q __last_fish_bind_mode
#        and test $__last_fish_bind_mode = $fish_bind_mode
#        return
#    end
#    set -g __last_fish_bind_mode $fish_bind_mode
#    switch $fish_bind_mode
#        case insert
#            printf '\e]50;CursorShape=1\x7'
#        case default
#            printf '\e]50;CursorShape=0\x7'
#        case "*"
#            printf '\e]50;CursorShape=0\x7'
#    end
#end

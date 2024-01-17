# .bashrc

#alias ccdbash="cd /home/build/ansible-playbooks/bash"


ccd() {
    case "$1" in
        "bash")
            cd /home/build/ansible-playbooks/bash
            ;;
        "task")
            find /home/build/ansible-playbooks -type f -iname 'task_*'
            ;;

        "home")
            cd  /home/build/ansible-playbooks 
 	    ;;

        "push")
	    cd /home/build/ansible-playbooks
            /home/build/ansible-playbooks/push-github.sh $1
 	    ;;


        "help")
            echo ""bash, task, home, push, help 
 	    ;;






        *)
            echo "Invalid argument. Usage: ccd <directory>"
            ;;
    esac
}



# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

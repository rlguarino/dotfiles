function ssh_agent
	set -xg SSH_AGENT (ssh-agent)
    set -xg SSH_AUTH_SOCK (echo $SSH_AGENT | grep SSH_AUTH_SOCK | cut -f1 -d';' | cut -f2 -d'=')
    set -xg SSH_AGENT_PID (echo $SSH_AGENT | grep SSH_AGENT_PID | cut -f3 -d';' | cut -f2 -d'=')
    echo "Agent pid $SSH_AGENT_PID"
end

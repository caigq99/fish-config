function clash_stop

  set -l clash_pid (pgrep -f "clash")
  
  echo "$clash_pid"

  if test -z $clash_pid

    echo "No running Clash process found."

    return 1

  end

  kill $clash_pid

  echo "Clash process with PID: $clash_pid has been stopped."

end

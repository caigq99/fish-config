function clash_start -a config_path
  
  set -l clash_pid (pgrep -f "clash")
  
  if ! test -z $clash_pid

    echo "Clash is already running with pid : $clash_pid"

    return 1

  end
  
  set -l config "/home/caigq/.config/clash/config.yaml"

  if ! test -z $config_path && test -e $config_path
      
    set config $config_path

  end

  echo "Starting Clash with config path: $config"

  clash -f $config &

  echo "Clash started."

end


create_file () {
  file_name=$1
  is_shell_script=$2
  touch "$file_name"
  echo "file $file_name created" 

  if [ "$is_shell_script" = true ]; then
    chmod u+x $file_name
    echo "added execute permission"
  fi
}

create_file $1 $2
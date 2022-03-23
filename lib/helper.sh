# Split strings
split_string(){
  # Argument 1: String to split
  # Argument 2: Delimiter

  n="$1"
  IFS="$2"
  read -r x <<< "$n"
  echo $x
}
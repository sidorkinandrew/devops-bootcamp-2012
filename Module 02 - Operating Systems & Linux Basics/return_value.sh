sum() {
  total=$(($1+$2))
  return $total
}

sum $1 $2
result=$?

echo "sum of $1 and $2 is $result"
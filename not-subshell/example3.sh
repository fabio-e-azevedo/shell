FILECONTENT="12 Duck
13 Bob
14 Jao"

sum=0
echo "$FILECONTENT" | {
  while read number name; do ((sum+=$number)); done
  echo $sum
}

FILECONTENT="12 Duck
13 Bob
14 Jao"

sum=0
while read -r number name; do ((sum+=$number)); done < <(echo "$FILECONTENT")
echo $sum

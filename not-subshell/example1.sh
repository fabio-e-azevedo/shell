FILECONTENT="12 Duck
13 Bob
14 Jao"

shopt -s lastpipe   # Comment this out to see the alternative behaviour

sum=0
echo "$FILECONTENT" | while read number name; do ((sum+=$number)); done
echo $sum

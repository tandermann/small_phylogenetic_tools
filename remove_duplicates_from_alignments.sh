mkdir clean
sed -i -e '/>/ s/$/XXXXX/' $1
perl -p -i -e 's/\n//g' $1
perl -p -i -e 's/\r//g' $1
perl -p -i -e 's/>/\n>/g' $1
awk '!seen[$0]++' $1 > clean/$1
perl -p -i -e 's/XXXXX/\n/g' clean/$1
perl -p -i -e 's/XXXXX/\n/g' $1

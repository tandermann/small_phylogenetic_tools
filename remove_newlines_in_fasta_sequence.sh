sed -i -e '/>/ s/$/XXXXX/' $1
perl -p -i -e 's/\n//g' $1
perl -p -i -e 's/>/\n>/g' $1
perl -p -i -e 's/XXXXX/\n/g' $1

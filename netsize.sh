
cat ../Saavedra2013/n9.txt | wc -l

head -n9 ../Saavedra2013/n9.txt | tr -d " " | tr -d "\n" | wc -c

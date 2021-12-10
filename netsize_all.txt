echo número de filas

for s in ../Saavedra2013/*.txt; do cat $s | wc -l; done

echo número de columnas

for s in ../Saavedra2013/*.txt; do head -n 1 $s | tr -d " " | tr -d "\n" | wc -c; done

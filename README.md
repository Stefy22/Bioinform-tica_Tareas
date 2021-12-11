# Bioinform-tica_Tareas

# Deber 1.10.3_Unix_Git

# Actividad  1)  Escriba un script que tome uno de estos archivos
#  y determine el número de filas (polinizadoras) y columnas
# (plantas). Tener en cuenta que las columnas están separadas
# por espacios y que hay un espacio al final de cada línea.

# Número de filas:
$ cat ../Saavedra2013/n9.txt | wc -l

Se utilizó el comando "cat" para imprimir el contenido de los archivos,
por lo que se tuvo que retroceder "cd ../" una librería
y así elegir un documento terminado en ".txt", despues se utilizó 
el comando "wc -l", este comando nos sirvió para contar las líneas

# Número de columnas:
$ head -n9 ../Saavedra2013/n9.txt | tr -d " " | tr -d "\n" | wc -c

Se utilizó el comando "head" para elegir una línea del documento, para
despúes colocar el comando "tr -d" para poder borrar algunos caracteres
como los espacios y algunos saltos de líneas, y para contar los caracteres osea 
el número de columnas se utilizo el comando "wc -c".

# Ya con toda esta información, podemos escribir nuestro "script"
# mediante el archivo netsize.sh:

Colocamos el comando $ nano netsize.sh
este comando nos envia a la pizarra de nano, donde vamos creando
nuestro guiones con los siguienres resultados:

echo "Números de filas"
echo "cat ../Saavedra2013/n9.txt | wc -l"
cat ../Saavedra2013/n9.txt | wc -l

echo "Número de columnas"
echo "head -n9 ../Saavedra2013/n9.txt | tr -d " " | tr -d "\n" | wc -c"
head -n9 ../Saavedra2013/n9.txt | tr -d " " | tr -d "\n" | wc -c

# Por último, para saber si se guardo correctamente nuestro scrip, colocamos
# el siguiente comando:
$ bash netsize.sh 

###################################################################################

# Actividad 2) Escriba un script que imprima el número de filas
# y columnas para cada red

# Número de filas para cada red
$ for s in ../Saavedra2013/*.txt; do cat $s | wc -l; done

Aqui se utiliza el comando "for" que nos permite un bucle y repetir una tarea
con ligeras variaciones cuando deseamos proporcionar diferentes argumentos 
de entrada para el mismo comando en lugar de escribir el codigo para caso 
por separado. 

# Número de columnas para cada red
$ for s in ../Saavedra2013/*.txt; do head -n 1 $s | tr -d " " | tr -d "\n" | wc -c; done

En este caso se realizo un bucle "for" en Saavedra2013 colocando
el contador $.

# Ya con toda esta información, podemos escribir nuestro "script"
# mediante el archivo netsize_all.sh:

Colocamos el comando $ nano netsize.sh
este comando nos envia a la pizarra de nano, donde vamos creando
nuestro guiones con los siguienres resultados:

echo "Número de filas"
echo "for s in ../Saavedra2013/*.txt; do cat $s | wc -l; done"
for s in ../Saavedra2013/*.txt; do cat $s | wc -l; done

echo "Número de columnas"
echo "for s in ../Saavedra2013/*.txt; do head -n 1 $s | tr -d " " | tr -d "\n" | wc -c; done"
for s in ../Saavedra2013/*.txt; do head -n 1 $s | tr -d " " | tr -d "\n" | wc -c; done

# Por último, para saber si se guardo correctamente nuestro scrip, colocamos
# el siguiente comando:
$ bash netsize_all.sh 

############################################################################################

# Para terminar con nuestras actividades, se ejecutó netsize.sh, netsize_all.sh
# y se guardaron nuestros resultados en netsize.txt, netsize_all.txt.  
# Para eso se realizó la siguinte acción en git bash:

$ cp netsize.sh  netsize.txt
$ cp netsize_all.sh  netsize_all.txt

Aqui utilizamos "cp" para copiar nuestros archivos de origen (resultados)
en el mismo directorio pero con un cambio de nombre, por lo que nos queda los siguientes archivos:

netsize.sh
netsize.txt
netsize_all.sh 
netsize_all.txt

# Y con esto terminamos la tarea 1.10.3 de Bioinformática

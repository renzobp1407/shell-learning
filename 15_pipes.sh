# Pipelines, often called pipes, is a way to chain commands and connect output from one command to the input of the next.
# A pipeline is represented by the pipe character: |. It's particularly handy when a complex or long input is required for a command.

# command1 | command2

# By default pipelines redirects only the standard output, 
# if you want to include the standard error you need to use the form |& which is a short hand for 2>&1 |.

ls / | wc -l

ls / | head

ls / | grep  # This will grab any line/file that has a matching pattern in it

cat /proc/cpuinfo | grep processor | wc -l

# otro ejemplo mas claro:

cat data.txt | grep "error" | wc -l

# Cat data.txt muestra el contenido del  archivo
# grep "error" filtra las lineas que contienen la palabra error
# wx -l cuenta el numero de lineas que contienen la palabra error

ls -l | grep "^-" | awk '{print $5, $9}' | sort -n -r

# ls -l lista archivos del directorio actual con detalles
# grep "^-"  filtra las lineas que comienzan con - que son archivos y no directorios
# awk {print $5, $9} imprime el tamaño del archivo (quinta columnna) yu el nombre del archivo (novena columna)
# sort -n -r: Ordena los archivos por tamaño numérico (-n) en orden descendente (-r).

# imprimir la segunda columna con AWK
Alice 25
Bob 30
Charlie 22

awk '{print $2}' data.txt
# Se tiene un peliculas.txt con diversas peliculas:
# Crear un metodo que lea el archivo,
# lo abra y devuelva la cantidad de lineas que posee.

def lines_counter
  f = File.open('peliculas.txt', 'r')
  print f.readlines.length
  f.close
end

lines_counter

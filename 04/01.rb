# Se tiene un archivo con diversos productos,
# donde la primera columna indica el nombre del producto
# y el resto de las columnas muestra el stock en distintas tiendas.
# Donde NR significa no registrado.
data = File.read('productos.txt').split("\n")
print data.split(', ')
# Crear un menu con 5 opciones, se debe validar que la opcion escogida sea
# 1, 2, 3, 4, 5 o 6.

# La opcion 2 permite que el usuario ingrese el nombre de un producto
# y el programa respondera con la cantidad de stock total (suma en las bodegas)
# de ese producto.
def stock_total(name, data)
  puts data.each { |number| number }
end
stock_total 'Producto1', data

# La opcion 3 muestra los productos no registrados en cada bodega.

# La opcion 4 permite conocer los productos con una existencia total menor
# a un valor ingresado por el usuario.

# La opcion 5 permite registrar un nuevo producto con su respectivo stock en cada bodega.
# (Hint: abrir el archivo como append).

# Si el usuario ingresa la opcion 6 el programa sale,
# si ingresa cualquier otra opcion se debe mostrar que la opcion es invalida,
# y mostrar el menu nuevamente y la opcion de elegir.

option = 0
txt_menu = <<BLA
  Selecciona una opción
  1. Ver productos
  2. Editar datos alumno
  3. Eliminar alumno
  4. Mostrar lista de alumnos
  5. Muestra las comunas de los alumnos
  6. Mostrar lista de alumnos entre 20 y 25 años de edad
  7. Mostrar suma de todas las edades de los alumnos
  8. Mostrar promedio de edad entre los alumnos
  9. Mostrar listas de alumnos por género
  10. Salir
BLA

# La opcion 1 permite conocer la cantidad de productos existentes.
# Al seleccionar esta opcion, se mostrara un submenu que permitira:
# a) Mostrar la existencia por productos.
# b) Mostrar la existencia total por tienda.
# c) Mostrar la existencia total en todas las tiendas.
# d) Volver al menu principal.
# Hint: Se debe validar que la opcion ingresada sea valida.

=begin

sub_option = ''
def opt_1(data)
  while sub_option != ''
    print 'Selecciona una opción de la "a" a la "d"'
    sub_option = gets
  end
  puts "Ha seleccionado la opción 1"
  puts "#{data}"
end

while option < 1 || option > 7
  print txt_menu
  # no chomp para evitar \n
  option = gets.to_i
  case option
    when 1
      opt_1 data
    when 2
      opt_2 data
    when 10
      print "Salir de la aplicación\n\n"
    else
      print "Seleccione una opción válida\n\n"
  end
end

=end
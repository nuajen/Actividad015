# La opción 2 permite que el usuario ingrese el nombre de un producto
# y el programa responderá con la cantidad de stock total (suma en las bodegas) de ese producto.
def option_2 prod
  data = File.readlines('../productos.txt')
  # data.each { |line| arr << line.strip.split(/ /) }
  arr = data.map { |el| el.strip.split(', ') }
  hash = {}
  arr.each do |item|
    hash[item[0]] = { stock1: item[1].to_i, stock2: item[2].to_i, stock3: item[3].to_i }
  end
  if hash.include? prod
    puts hash[prod][:stock1] + hash[prod][:stock2] + hash[prod][:stock3]
  else
    puts "#{prod} no se encuentra en nuestros productos."
  end
end

option_2 'Producto3'

# Crear un metodo que reciba el archivo peliculas.txt,
# lo abra y cuente la cantidad total de palabras.
# El metodo debe devolver este valor.
def words_counter
  movies = ''
  File.open('peliculas.txt', 'r') { |file| movies = file.readlines }
  total_words = 0
  movies.each do |line|
    total_words += line.split.size
  end
  total_words
end
puts words_counter

# Crear un metodo similar para que ademas reciba -como argumento- un string.
# En este caso el metodo debe contar unicamente las apariciones de ese string en el archivo.
def words_counter_search(word)
  data = ''
  File.open('peliculas.txt', 'r') { |file| data = file.readlines }
  arr = data.each { |w| w.split(' ').map(&:chomp) }
  arr = arr.join(' ').split(' ')
  matches = []
  if arr.include?(word)
    matches = arr.group_by { |w| w == word }
  end
  matches[true].length
end
puts words_counter_search('Guerra')

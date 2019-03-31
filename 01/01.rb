# Crear un metodo que reciba dos strings,
# este metodo creara un archivo index.html
# y pondra como parrafo cada uno de los strings recibidos.

def create_html(first_paragraph, second_paragraph)
  html = File.open('index.html', 'w')
  html.print "<p>#{first_paragraph}</p>\n"
  html.print "<p>#{second_paragraph}</p>"
  html.close
end

create_html('Hola', 'mundo')

# Crear un metodo similar al anterior, que ademas pueda recibir un arreglo.
# Si el arreglo no esta vacio, agregar debajo de los parrafos
# una lista ordenada con cada uno de los elementos.
def create_second_html(first_paragraph, second_paragraph, array)
  html = File.open('index_2.html', 'w')
  html.print "<p>#{first_paragraph}</p>\n<p>#{second_paragraph}</p>\n"
  if array.any?
    html.print "<ol>\n"
    array.each { |li| html.print "  <li>#{li}</li>\n" }
    html.print "</ol>\n"
  end
  html.close
end

create_second_html('Hola', 'mundo', ['uno', 'dos', 'tres', 'cuatro'])

# Crear un tercer metodo que ademas pueda recibir un color.
# Agregar color de fondo a los parrafos.
# El retorno de los metodos debe devolver nil.
def create_third_html(first_paragraph, second_paragraph, color, array)
  html = File.open('index_3.html', 'w')
  html.print '<p style="background-color: ' + "#{color}" + '; color: white;">' +"#{first_paragraph}</p>\n"
  html.print '<p style="background-color: ' + "#{color}" + '; color: white;">' +"#{second_paragraph}</p>\n"
  if array.any?
    html.print "<ol>\n"
    array.each { |li| html.print "  <li>#{li}</li>\n" }
    html.print "</ol>\n"
  end
  html.close
end

create_third_html('Hola', 'mundo', 'gray', ['uno', 'dos', 'tres', 'cuatro'])

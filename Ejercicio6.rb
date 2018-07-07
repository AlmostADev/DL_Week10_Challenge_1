# Se tiene el archivo config.ru :

# config.ru
require 'rack'

class MiPrimeraWebApp
 def call(env)
    [
        # Agregar un código de respuesta 200.
        200, 
        # Agregar en los Response Headers un Content-type de tipo text/html.
        {'Content-Type' => 'text/html'}, 
        # Agregar en el Response Body una etiqueta de párrafo que contenga un texto Lorem ipsum.
        ['<p>Maecenas vestibulum ultrices est eget rhoncus. Aliquam lobortis nisl at nulla laoreet
        gravida. Vestibulum eu dignissim felis. Nullam quis sollicitudin neque, id fringilla leo.
        Pellentesque lobortis tincidunt ex sed posuere. Nunc sed pretium quam, vitae tristique leo.
        Ut sodales in orci pulvinar viverra. Nulla facilisi. Ut sed neque tellus. Aliquam eu enim nec
        tortor varius gravida tristique sit amet velit.</p>']
    ]
 end
end

run MiPrimeraWebApp.new
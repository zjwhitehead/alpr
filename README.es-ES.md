

# Alpr [![Gem](https://img.shields.io/gem/v/alpr.svg?style=plastic)](https://rubygems.org/gems/alpr) [![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fzjwhitehead%2Falpr.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fzjwhitehead%2Falpr?ref=badge_shield)
[![CircleCI](https://circleci.com/gh/zjwhitehead/alpr/tree/master.svg?style=svg)](https://circleci.com/gh/zjwhitehead/alpr/tree/master)

Pequeño rubygem que envuelve [openALPR](https://github.com/openalpr/openalpr).

Necesitarás instalar openALPR. Yo utilicé `brew update && brew install openalpr` en macOS. 

Para Linux, consulta la [wiki oficial](https://github.com/openalpr/openalpr/wiki/Compilation-instructions-(Ubuntu-Linux))

## Instalación

Requiere la versión 2.3 de Ruby o superior.

Añade esta línea al Gemfile de tu aplicación:

```ruby
gem 'alpr'
```

Y luego ejecuta:

    $ bundle

O instálalo tú mismo de la siguiente manera:

    $ gem install alpr

## Uso

```ruby
search = Alpr.new("lc.jpg")
puts search.output
```

Para las matrículas de EE. UU.
especifica un patrón de estado opcional (por ejemplo, Ohio = "oh")
```ruby
search = Alpr.new("lc.jpg", :us, "oh")
puts search.output
```


## Contribuir

1. Haz un fork ( https://github.com/zjwhitehead/alpr/fork )
2. Crea tu rama de características (`git checkout -b my-new-feature`)
3. Confirma tus cambios (`git commit -am 'Add some feature'`)
4. Empuja a la rama (`git push origin my-new-feature`)
5. Crea una nueva Pull Request

#!/usr/bin/env bash
# exit on error
set -o errexit

# Instalar dependencias de Ruby on Rails (si es necesario)
bundle install

# Compilar los assets (si es necesario)
bundle exec rake assets:precompile

# Limpiar los assets previamente compilados (si es necesario)
bundle exec rake assets:clean

# Ejecutar migraciones de la base de datos (si es necesario)
bundle exec rake db:migrate

bundle exec rake db:seed

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Article.create!([
  {
    title: "Primer artículo",
    content: "Este es el contenido del primer artículo.",
    author: "Juan Pérez",
    created_at: Time.current,
    updated_at: Time.current
  },
  {
    title: "Segundo artículo",
    content: "Contenido interesante sobre desarrollo web.",
    author: "María López",
    created_at: Time.current,
    updated_at: Time.current
  },
  {
    title: "Tercer artículo",
    content: "Rails es un framework muy popular en Ruby.",
    author: "Carlos Sánchez",
    created_at: Time.current,
    updated_at: Time.current
  }
])

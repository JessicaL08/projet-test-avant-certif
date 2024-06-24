# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Appartement.destroy_all

Appartement.create(adresse: "20 chemin des capucins", ville: "Lyon")
Appartement.create(adresse: "37b avenue du chater", ville: "Francheville")
Appartement.create(adresse: "45 avenue Gabriel Péri", ville: "Villeurbabane")
Appartement.create(adresse: "36 route nationale", ville: "Lonny")
Appartement.create(adresse: "7 rue madame de Sévigné", ville: "Charleville-Mézière")
Appartement.create(adresse: "67 avenue de l'impasse", ville: "Paris")
Appartement.create(adresse: "87 boulevard De Gaulle", ville: "Biaritz")
Appartement.create(adresse: "167 rue de sève", ville: "Annecy")
Appartement.create(adresse: "6 chemin du pire", ville: "Marseille")
Appartement.create(adresse: "123 bonjour la vie", ville: "Montreux")


Client.destroy_all
Client.create(name: "Jean")

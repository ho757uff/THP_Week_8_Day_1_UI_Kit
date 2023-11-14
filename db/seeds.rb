# db/seeds.rb

# Créer un utilisateur (remplacez par vos propres attributs)
user = User.create!(
  email: "organisateur_1@example.com",
  password: "password",
  password_confirmation: "password"
)

# Créer quelques événements
5.times do |i|
  Event.create!(
    name: "Événement ##{i}",
    description: "Ceci est la description de l'événement numéro #{i}.",
    date: DateTime.now + i.days, # Chaque événement est espacé d'un jour.
    organizer: user # Assurez-vous que l'organisateur est un utilisateur valide.
    # Ajoutez d'autres attributs nécessaires ici.
  )
end

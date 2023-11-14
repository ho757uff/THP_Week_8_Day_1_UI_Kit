class MoleculesController < ApplicationController
  # actions du contrôleur ici
end

def navbar
  # Vous pouvez ajouter d'autres variables d'instance ici si nécessaire
  render partial: "atomic-design/navbar/navbar"
end

def footer
  # Vous pouvez ajouter d'autres variables d'instance ici si nécessaire
  render partial: "atomic-design/navbar/footer"
end

def banner
  # Vous pouvez ajouter d'autres variables d'instance ici si nécessaire
  render partial: "atomic-design/navbar/banner"
end

def login
  # Vous pouvez ajouter d'autres variables d'instance ici si nécessaire
  render partial: "atomic-design/navbar/login"
end

# Ajoutez d'autres actions pour d'autres types de molécules si nécessaire

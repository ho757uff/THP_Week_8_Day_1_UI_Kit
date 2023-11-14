# # app/controllers/molecules_controller.rb
# class MoleculesController < ApplicationController
#   def index
#     @molecules = Molecule.all
#   end
# end

class MoleculesController < ApplicationController
  def navbar
    # Vous pouvez ajouter d'autres variables d'instance ici si nécessaire
    render partial: 'atomic-design/navbar/navbar'
  end

  def footer
    # Vous pouvez ajouter d'autres variables d'instance ici si nécessaire
    render partial: 'atomic-design/navbar/footer'
  end

  # Ajoutez d'autres actions pour d'autres types de molécules si nécessaire
end

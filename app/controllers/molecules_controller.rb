# app/controllers/molecules_controller.rb
class MoleculesController < ApplicationController
  def index
    @molecules = Molecule.all
  end
end

class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def molecules
    @molecules = Molecule.all
  end
end

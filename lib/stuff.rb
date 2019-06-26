class Animal

    def initialize(species)
        @species = species
    end

    attr_accessor :species
 
  def species=(species)
    @species = species
  end

  def species
    @species
  end
 
end
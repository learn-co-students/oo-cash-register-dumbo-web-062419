class Animal

    attr_accessor :species

    def initialize(species="cat")
        @species = species
    end
 
    def species=(species)
      @species = species
    end
   
    def say_species
      puts "Hi! I'm a #{@species}"
    end
  end
  
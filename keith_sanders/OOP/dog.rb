require_relative 'mammal'
class Dog < Mammal
    attr_reader :walk, :pet, :run
    def pet
        @health += 5
        self
    end
    def walk 
        @health -= 1
        self
    end
    def run 
        @health -= 10
        self
    end
end 

g = Dog.new 
g.display_health
g.walk.walk.walk.run.run.pet.display_health

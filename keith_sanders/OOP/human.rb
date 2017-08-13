class Human 
    attr_accessor :name, :str, :intel, :stl, :hp
    
    def initialize name 
        @name = name
        @str = 3
        @intel = 3
        @stl = 3
        @hp = 100 
    end
    def attack alien, caus
        if alien.class.ancestors.include? Human
            p "#{@name}: You attack #{alien.name} for #{caus} damage!"
            alien.take_hit self, caus
        end
    end
    def take_hit alien, caus
        p "#{name}: #{alien.name} devasted you for #{caus} damage!"
        @hp -= caus
    end
    def display_hp 
        p "#{@name} has #{@hp} hit left."
    end
end

Four = Human.new "Four"
Mogadorian = Human.new "Mogadorian"

Mogadorian.attack Four, 45
Four.attack Mogadorian, 1000
 
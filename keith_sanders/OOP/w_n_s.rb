require_relative 'human'

class Wizard < Human
    def initalize name 
        super name 
        @intel = 25
        @hp = 50
    end
    def defend
        p "#{name}: You've defend the human race for 10 moral points!"
        @hp += 10
    end
    def resist alien, caus
        p "#{name}: You've masscare #{alien.name} with your resistances for #{caus} hits!!"
        alien.take_hit self, caus
    end
end

class Ninja < Human
    def initalize name
        super name
        @stl = 250
        @str = 100
    end 
    def night alien, caus
        p "#{@name}: You nighted to the #{alien.name} base with your invisible powers"
        alien.take_hit self, caus
        @hp += caus
    end
    def retreat
        p "#{name}: You escape to the fight another day, but you suffer damages (40 hit points)." 
        @hp -= 40
    end
end

class Samurai < Human
    @@instances = []
  def initialize name
    super name
    @hp = 200
    @@instances << self
  end
  def how_many
    @@instances.count
  end
  def death_blow alien
    caus = alien.hp
    p "#{@name}: You kill #{alien.name} with DEATH BLOW for #{caus} damage!"
    alien.take_hit self, caus
  end
  def meditate
    p "#{@name}: You meditate, regaining #{200-@hp} hit points ..."
    @hp = 200
  end
end

Sam = Wizard.new "Sam"
Six = Ninja.new "Six"
Nine = Samurai.new "Nine"

Sam.display_hp
Six.display_hp
Nine.display_hp

Nine.meditate
Six.retreat
Six.retreat
Sam.defend

Six.night Mogadorian, 49
Six.display_hp
Sam.display_hp

Sam.resist Mogadorian, 29
Nine.death_blow Mogadorian
Nine.death_blow Six
Nine.death_blow Sam

Sam.display_hp
Six.display_hp

Seven = Samurai.new "Seven"
Five = Samurai.new "Five"
Ella = Samurai.new "Ella"
Seven.display_hp
Five.display_hp
Ella.display_hp

p "There are #{Nine.how_many} Samurai at the Dojo."


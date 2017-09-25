class Hero
  attr_accessor :health

  def initialize()
    @health = 15
  end

    def attack(target)
      attack_points = 3
      @target = target
      @target.health -= attack_points
    end

    def rest()
      @health += 6
    end
  end

  class Akantor
    attr_accessor :health
    def initialize()
      @health = 12
    end

      def attack(target)
        @target = target
        accuracy = rand(1..10)

        if @health > 12
          @target.health -= 5
          puts "Akantor has been hit! It's health is #{@Akantor.health} hp."

        else
          if accuracy > 6
          @target.health -= 5
          puts "The Akantor swings and attacks! -5hp"
          puts "You currently have #{@Hero.health} hp left."

        else
          puts "You dodged the attack!"
        end
      end
    end
  end



  class Boss
    attr_accessor :health
    def initialize()
      @health = 15
    end

      def attack(target)
        @target = target
        accuracy = rand(1..10)

        if health > 10
          @target.health -= 6
          puts "The boss swings its huge axe and attacks you! -6hp"

        else
          if accuracy > 5
          @target.health -= 6
          puts "The boss swings its huge axe and attacks you! -6hp"

        else
          puts "He misses the attack! Whew."
        end
      end
    end

  end

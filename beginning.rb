class BeginningScene

  def enter()
    @akantor = Akantor.new()
    @hero = Hero.new()
    puts "You look around for a bit...dazed and confused"
    puts "Suddenly, an Akantor alien appears and demands money from you!"
    puts "You laugh it off and walk away."
    puts "The Akantor is not having it and stands in your way to fight."

    fight()
  end
end

def fight()
  puts "You can't run!"

  while (@akantor.health > 0)
    print "Rest to reccuperate health or attack?>"
    choice = $stdin.gets.chomp

  if choice == "rest"
    @hero.rest()
    puts "You are well rested and now have #{@hero.health} hp."

  elsif choice == "attack"
    @hero.attack(@akantor)

    if (@akantor.health <= 0)
      puts "You beat up the Akantor!"
      return 'koi_fish_pond'
    end

  else
    puts "You just stand there."
  end

@akantor.attack(@hero)
  if (@hero.health <= 0)
    puts "You've been beaten."
    return 'death'
  end
end

end

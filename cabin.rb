class CabinScene
  def enter()
    @hero = Hero.new()
    @akantor = Akantor.new()

    puts "You enter a cabin looking to rest up."
    @hero.rest()

    puts "You have rested and recovered 6hp."
    puts "An Akantor opens the door and sees that you are there."
    puts "He won't let you leave without a fight."

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
      return 'treehouse'
    end

  else
    puts "You just stand there."
  end

@akantor.attack(@hero)
  if (@hero.health <= 0)
    puts "You've been beaten."
    return 'death'
  end

  puts "You have #{@hero.health} hp after this fight."
end

end

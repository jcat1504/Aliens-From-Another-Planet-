class BridgeScene
  def enter()
    @boss = Boss.new()
    @hero = Hero.new()

    puts "You made your way out and found the kidnapper along the bridge"
    puts "You are determined to stop him in his tracks."

    fight()
  end
end

def fight()

while (@boss.health > 0)
  accuracy = rand(1..10)
  @boss.attack(@hero, accuracy)
  if (@hero.health <= 0)
    puts "You have no health left."
    return 'death'
  end
end

puts "You have #{@hero.health} hp left."
print "Rest or attack? >"
choice = $stdin.gets.chomp

if choice == "rest"
  @hero.health()
  puts "You're well rested. You have #{@hero.health} hp left."

elsif choice == "attack"
  @hero.attack(@boss)
  puts "The boss has #{@boss.health} hp left"

elsif choice == "attack"
  @hero.attack(@boss)
  if (@boss.health <=0)
    puts "You beat him to a pulp!"
    return 'shrine'

else
  puts "You just stand there and he swings his axe"
  puts "Put a correct input next time."
  return 'death'
end

puts "You have #{@hero.health} hp left."
end

puts "The boss screams and dissolves into goop."
return 'shrine'
end

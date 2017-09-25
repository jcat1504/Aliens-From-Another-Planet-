class KoiFishPondScene
  def enter()
    puts "You enter a part of the woods that is quiet"
    puts "You see what used to be a koi fish pond"
    puts "Now it is a giant crater with an emblem in the center"
    puts "You pick up an orb nearby. What do you do with it?"

    #puts "1. Carry it with you"
    #puts "2. Insert in the emblem"
    puts "(numbers only) >"

    choices = ['carry it with you',
      'insert it in emblem']
      (1..choice.length).each do |number|
      puts "#{number}. %s" %choices[number-1]
    end

    choice = $stdin.gets.chomp

    if choice == "1"
      puts "You carry it with you and walk away"
      puts "Suddenly, you hear a ticking sound"
      puts "Like a bomb..."
      puts "BOOM!"
      return 'death'

    elsif choice == "2"
      puts "You insert the orb into the emblem"
      puts "You hear a clicking sound in the distance somewhere..."
      puts "You ignore it and move forward"
      return 'cabin'

    else
      return 'koifishpond'
    end
  end
end

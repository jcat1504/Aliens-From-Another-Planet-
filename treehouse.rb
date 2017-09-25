class TreehouseScene
  puts "You find yourself in a treehouse..."
  puts "...Thinking you can take another rest."
  puts "Suddenly, the lodger residing comes out with an axe."
  puts "He says you can stay if you answer his questions correctly."
  puts "If not, he will chop your head off"
  puts "-" * 10

  print "What chicken sandwich shop closes on Sundays?"
  print "(Use Capitals!)"
  print ">"
  answer = $stdin.gets.chomp

  if answer == "Chick Fil A" || "Chick Fil-A"
    puts "Good! Onto the next question."

  elsif answer == "I don't know" || "Burger King"
    puts "Off with your head!"
    return 'death'

  else
     puts "Input, please!"
    answer = $stdin.gets.chomp
  end

end

puts "-" * 10
puts "What is the best type of beef you can get from Japan?"
print ">"
answer = $stdin.gets.chomp

if answer == "Wagyu" || "Wagyu beef"
  puts "Good! Onto the next question"

elsif answer == "Beef"
  puts "Off with your head!"
  return 'death'

else
  puts "Make a choice! >"
  answer = $stdin.gets.chomp
end

print "Who is the director of the movie Kingsman?"
print ">"
answer = $stdin.gets.chomp

if answer == "Matthew Vaughn"
  puts "Good job! You made it!"
  return 'bridge'

elsif answer == "Matt Vaughn"
  puts "Off with your head!"
  return 'death'

else
  puts "Type an answer! >"
  answer = $stdin.gets.chomp
end

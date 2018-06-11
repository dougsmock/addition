puts "The variable on the left side assigns the value to right"
puts "right side of the single 'equals' sign."
puts "There is no comparison."
puts "Here, we set 'variable' equal to 100."
variable = 100
puts "#{variable}"
puts "This is not a boolean expression.\n\n"

print "Now, give me a number: "
number = gets.chomp.to_i
puts "Is this equal to 100?"
  if variable == number
    puts "Absolutely."
  else
    puts "No way."
  end

print "Give me another number: "
another = gets.chomp.to_i
puts "Is this NOT equal to 100?"
  if variable != another
    puts "Absolutely."
  else
    puts "No way."
  end

def plus(choice)
  print "Let's add two numbers. Give me one: "
  a = gets.chomp.to_i
  print "Give me the other: "
  b = gets.chomp.to_i
  answer = a + b
  print "#{answer}\n\n"
  repeat()
end

def minus(choice)
  print "Let's subtract two numbers. Give me one: "
  a = gets.chomp.to_i
  print "Give me the other: "
  b = gets.chomp.to_i
  answer = a - b
  print "#{answer}\n\n"
  repeat()
end

def times(choice)
  print "Let's multiply two numbers. Give me one: "
  a = gets.chomp.to_i
  print "Give me the other: "
  b = gets.chomp.to_i
  answer = a * b
  print "#{answer}\n\n"
  repeat()
end

def divideby(choice)
  print "Let's divide two numbers. Give me one: "
  a = gets.chomp.to_f
  print "Give me the other: "
  b = gets.chomp.to_f
  answer = a / b
  print "#{answer}\n\n"
  repeat()
end

#Giving the user a repeat
#Use again?
#y -- go through process again
#n -- bails out, say Goodbye
#typo, he repeats

def repeat()
  puts "Do you want to do this again? (y/n)"
  yes_no = gets.chomp
      if yes_no.downcase == 'y'
        puts "Add, subtract, multiply or divide? "
        choice = gets.chomp
          if choice.downcase == 'add'
            plus(choice)
          elsif choice.downcase == 'subtract'
            minus(choice)
          elsif choice.downcase == 'multiply'
            times(choice)
          elsif choice.downcase == 'divide'
            divideby(choice)
          else
            puts "You have a typo. Try again."
            repeat()
          end
      elsif
        yes_no.downcase == 'n'
        puts "Goodbye."
        exit(0)
      else
        puts "Try again."
        repeat()
      end
end

#starting point
puts "You want to add, subtract, multiply or divide? "
  choice = gets.chomp
    if choice.downcase == 'add'
      plus(choice)
    elsif choice.downcase == 'subtract'
      minus(choice)
    elsif choice.downcase == 'multiply'
      times(choice)
    elsif choice.downcase == 'divide'
      divideby(choice)
    else
      puts "You have a typo. Try again."
      repeat()
    end

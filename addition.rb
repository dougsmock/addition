#string test for non-numbers, if I can ever find one that works

def check_string(string)
  puts "Yes, you called this function, genius. It still does nothing."
end

def check_zero(b)
  if b == 0
    puts "You can't divide by zero, dum-dum."
    repeat()
  end
end

def plus(choice)
  print "Let's add two numbers. Give me one: "
  a = gets.chomp.to_f
  check_string(a)
  print "Give me the other: "
  b = gets.chomp.to_f
  check_string(b)
  answer = a + b
  print "#{answer}\n\n"
  repeat()
end

## trying to string-proof entries

def minus(choice)
  print "Let's subtract two numbers. Give me one: "
  a = gets.chomp.to_f
  check_string(a)
  print "Give me the other: "
  b = gets.chomp.to_f
  check_string(b)
  answer = a - b
  print "#{answer}\n\n"
  repeat()
end

def times(choice)
  print "Let's multiply two numbers. Give me one: "
  a = gets.chomp.to_f
  check_string(a)
  print "Give me the other: "
  b = gets.chomp.to_f
  check_string(b)
  answer = a * b
  print "#{answer}\n\n"
  repeat()
end

def divideby(choice)
  print "Let's divide two numbers. Give me one: "
  a = gets.chomp.to_f
  check_string(a)
  print "Give me the other: "
  b = gets.chomp.to_f
  check_zero(b)
  check_string(b)
  answer = a / b
  print "#{answer}\n\n"
  repeat()
end

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

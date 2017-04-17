# ask for first number from the user (gets.chomp)
# store that number into a variable
# ask for the second number
# store that number into a variable
# (now) assume that the operation is addition
# (later) ask for an operation to do
# compute the two number

def calc(num1, num2, operation)
  num1 = num1.to_i
  num2 = num2.to_i

  if operation == '+'
    num1 + num2
  elsif operation == '-'
    num1 - num2
  elsif operation == 'x'
    num1 * num2
  elsif operation == '/'
    num1 / num2
  else
    nil
  end

  # case operation
  # when '+'
  #   num1 + num2
  # when '-'
  #   num1 - num2
  # when 'x'
  #   num1 * num2
  # when '/'
  #   num1 / num2
  # else
  #   nil
  # end
end

puts "test calc call"
puts calc(10, 9, '-')

while true
  puts "Please enter the first number\nEnter nothing to leave the program" 
  first_number = gets.chomp
  abort('Ok, goodbye') if first_number == ''

  puts 'Please enter the second number'
  second_number = gets.chomp
  abort('Ok, goodbye') if second_number == ''

  puts 'Enter the operation'
  operation = gets.chomp
  abort('Ok, goodbye') if operation == ''
  
  result = calc(first_number, second_number, operation)
  if result
    puts "#{first_number} #{operation} #{second_number} = #{result}\n\n\n"
  else
    puts "Please enter a valid operation"
  end
end
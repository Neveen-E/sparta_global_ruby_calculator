puts "choose the type of calculator you want to use. (a) advance - or - (b) basic."
type_of_calculator = gets.chomp

if type_of_calculator.eql? "a"
  puts "ADVANCE CALCULATOR"
  puts "Choose an operation to perform. (s) square root - (p) power"
  operation = gets.chomp
  if operation.eql? "s"
    puts "The square root of "
    puts "-AND-"
    puts "The square root of "
  end

elsif type_of_calculator.eql? "b"
  puts "BASIC CALCULATOR"
  puts "inster first number: "
  first_number= gets.chomp.to_i
  puts "insert second number: "
  second_number = gets.chomp.to_i
  puts "Choose an operation to perform. (a) add - (s) subtract - (m) multiply - (d) divide"
  operation = gets.chomp
  if operation.eql? "a"
    puts "The sum of #{first_number} and #{second_number} is #{first_number + second_number}"
  elsif operation.eql? "s"
    puts "The difference of #{first_number} and #{second_number} is #{first_number - second_number}"
  elsif operation.eql? "m"
    puts "The product of #{first_number} and #{second_number} is #{first_number * second_number}"
  elsif operation.eql? "d"
    puts "The quotient of #{first_number} and #{second_number} is #{first_number.to_f / second_number.to_f}"
  else
    puts "Please select a valid operation."
  end

end

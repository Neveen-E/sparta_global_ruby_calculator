puts "choose the type of calculator you want to use. (a) advance - or - (b) basic."
type_of_calculator = gets.chomp

if type_of_calculator.eql? "a"
    puts "ADVANCE CALCULATOR"
    puts "Choose an operation to perform. (s) square root - (p) power - (b) bmi"
    operation = gets.chomp
    if operation.eql? "s"
        puts "instert number: "
        first_number = gets.chomp.to_f
        puts "The square root of #{first_number} is #{Math.sqrt(first_number).round(2)}"
    elsif operation.eql? "p"
        puts "instert the base number: "
        first_number = gets.chomp.to_i
        puts "instert the exponent "
        second_number = gets.chomp.to_i
        puts "#{first_number} raised to the power of #{second_number} is #{first_number**second_number}"
    elsif operation.eql? "b"
        puts "would you like to calculate your BMI using the (i) imperial or (m) metric system?"
        bmi_system = gets.chomp
        if bmi_system.eql? "i"
          puts "IMPERIAL SYSTEM"
          puts "insert your weight(pounds): "
          weight = gets.chomp.to_f
          puts "insert your height(inches): "
          height = gets.chomp.to_f
          puts "your BMI is #{((weight * 703)/(height**2)).round(2)}"
        elsif bmi_system.eql?"m"
          puts "METRIC SYSTEM"
          puts "insert your weight(kg): "
          weight = gets.chomp.to_f
          puts "insert your height(cm): "
          height = gets.chomp.to_f
          puts "your BMI is #{((weight/(height**2))*10000).round(2)}"
        else
          puts "Please select a valid option."
        end
    else
        puts "Please select a valid operation."
    end

elsif type_of_calculator.eql? "b"
      puts "BASIC CALCULATOR"
      puts "instert first number: "
      first_number = gets.chomp.to_i
      puts "insertt second number: "
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
else
      puts "Please select a valid option."
end

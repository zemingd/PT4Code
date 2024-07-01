numbers = gets.split.map(&:to_i)
puts "#{numbers[0]/numbers[1]} #{numbers[0]%numbers[1]} #{sprintf("%.5f",numbers[0].to_f/numbers[1])}"

numbers = gets.chomp.split(' ').map(&:to_i)

puts "#{numbers[-1]} #{numbers[0]} #{numbers[1]}"
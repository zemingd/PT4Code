a, b, c = gets.chomp.split(" ").map(&:to_i)

require 'complex'
if (a + b + 2 * Math.sqrt(a * b) - c) < 0
    puts "Yes"
else
    puts "No"
end

require 'complex'
a, b = gets.split.map(&:to_s)
num = (a + b).to_i
puts Math.sqrt(num) % 1 == 0 ? "Yes" : "No"

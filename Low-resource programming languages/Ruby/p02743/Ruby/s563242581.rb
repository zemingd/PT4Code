require 'complex'
line = gets.chomp.split().map(&:to_i)
Math.sqrt(line[0]).rationalize.to_f  +  Math.sqrt(line[1]).rationalize.to_f  < Math.sqrt(line[2]).rationalize.to_f  ? ans = "Yes" : ans = "No"
puts ans

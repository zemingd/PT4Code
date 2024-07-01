require 'complex'
n = gets.split.join('').to_i
m = (Math.sqrt(n)).round
puts m * m == n ? 'Yes' : 'No'
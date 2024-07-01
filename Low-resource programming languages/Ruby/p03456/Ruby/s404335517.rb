require 'complex'
n = gets.split.join('').to_i
m = Math.sqrt(n)
puts m * m == n ? 'Yes' : 'No'
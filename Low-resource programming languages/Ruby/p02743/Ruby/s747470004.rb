a,b,c = gets.split.map(&:to_i)
require 'mathn'
puts a + b + (2 * Math.rsqrt(a * b)) < c ? 'Yes' : 'No'

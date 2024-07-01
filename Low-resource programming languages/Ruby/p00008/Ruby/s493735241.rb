# Sum of 4 Integers

require 'matrix'

ab = Matrix.build(10,10) do |i,j|
	i + j
end

abc = Matrix.build(10,10) do |i,j|
	ab[i,j] + j
end

abcd = Matrix.build(10,10) do |i,j|
	abc[i,j] + j
end 

n = gets.to_i
count = 0
abcd.each{|e| count += 1 if e == n}

puts count * 4
N = gets.to_i
A = gets.split.map(&:to_i)

require 'set'
set = Set.new(A)
puts(A.size == set.size ? 'YES' : 'NO')
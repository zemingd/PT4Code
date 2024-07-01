require 'prime'
A, B = gets.split.map(&:to_i)
b = [A, B].max
s = [A, B].min
n = []
1.upto(b / 2) do |i|
  n << i if (b % i).zero? && (s % i).zero? && (i == 1 || Prime.prime?(i))
end
puts n.size

require 'prime'
A, B = gets.split.map(&:to_i)
b = [A, B].max
s = [A, B].min
n = []
1.upto(b / 2) do |i|
  next unless i == 1 || Prime.prime?(i)
  n << i if (b % i).zero? && (s % i).zero?
end
puts n.size

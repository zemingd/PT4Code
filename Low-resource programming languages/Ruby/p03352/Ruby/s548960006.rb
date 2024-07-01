require 'prime'
x = gets.chomp.to_i
ans = 1
1.upto(x) do |i|
  ps = i.prime_division
  m = ps.map { |e| e.last }.uniq
  ans = i if m.size == 1 && m != [1]
end
puts ans

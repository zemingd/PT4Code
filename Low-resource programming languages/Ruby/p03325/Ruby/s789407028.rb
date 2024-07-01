require 'prime'
N = gets.to_i
a_list = gets.split.map(&:to_i)
ans = a_list.map do |a|
  d = a.prime_division.find { |n, _| n == 2 }
  if d
    d[1]
  else
    0
  end
end.reduce(&:+)
puts ans

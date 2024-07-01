N = gets.chomp.to_i
input = gets.chomp.split.map(&:to_i)
min = input.min
max = input.max
ans = 0
(min..max).each do |k|
  arc = input.count { |i| i >= k }
  ans += 1 if arc == input.size - arc
end
puts ans

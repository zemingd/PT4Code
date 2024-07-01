n, l = gets.chomp.split.map(&:to_i)
sum = 0
r = l
1.upto(n) do |i|
  d = l + i - 1
  sum = sum + d
  r = d if d.abs < r.abs
end
puts sum - r
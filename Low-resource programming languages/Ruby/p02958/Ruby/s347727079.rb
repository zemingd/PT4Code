n = gets.to_i
p = gets.split.map(&:to_i)

sorted = p.sort

diff_num = p.zip(sorted).select do |a, b|
  a != b
end.count

puts (diff_num <= 2) ? "YES" : "NO"
n = gets.chomp.to_i
w = gets.chomp.split(" ").map(&:to_i)

total_w = w.inject(&:+)
min_d = total_w
1.upto(n - 1) do |t|
  s1 = w.first(t).inject(&:+)
  s2 = total_w - s1
  d = (s1 - s2).abs
  min_d = d if d < min_d
end

puts min_d

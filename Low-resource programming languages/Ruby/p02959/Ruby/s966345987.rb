N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
b.push(0)
diff = 0
ans = 0
(N + 1).times do |i|
  ans += [a[i], b[i] + diff].min
  diff = [b[i] + diff - a[i], 0].max
end
puts ans

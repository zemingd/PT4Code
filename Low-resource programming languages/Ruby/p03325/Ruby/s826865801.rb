n = gets.chomp.to_i
a = gets.chomp.split.map &:to_i
ans = 0
a.size.times do |i|
  while a[i].even?
    a[i] /= 2
    ans += 1
  end
end
p ans

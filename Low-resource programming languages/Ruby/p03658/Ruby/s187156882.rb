n, k = gets.chomp.split.map &:to_i
a =gets.chomp.split.map &:to_i
sortar = a.sort
c = n-1
ans = 0
k.times do |i|
  ans += sortar[c]
  c -= 1
end
puts ans

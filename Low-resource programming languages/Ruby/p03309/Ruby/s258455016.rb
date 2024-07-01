n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

n.times do |i|
  a[i] -= i + 1
end

a.sort!
m = a[a.size/2]

ans = 0
a.each do |aa|
  ans += (aa - m).abs
end
p ans

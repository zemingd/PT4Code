n = gets.to_i
h = Hash.new(0)
n.times do |i|
  s = gets.chomp.split("")
  s.sort!
  h[s] += 1
end
ans = 0
h.values.each do |x|
  ans += x * (x-1) / 2
end
puts ans
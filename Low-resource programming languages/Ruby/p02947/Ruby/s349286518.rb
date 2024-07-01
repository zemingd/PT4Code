n = gets.to_i
s = []
h = Hash.new(0)
n.times do |i|
  s[i] = gets.chomp.split("")
  s[i].sort!
  h[s[i]] += 1
end
ans = 0
h.values.each do |x|
  ans += x * (x-1) / 2
end
puts ans
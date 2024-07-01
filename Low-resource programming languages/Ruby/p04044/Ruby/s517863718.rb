n, l = gets.chomp.split(" ").map(&:to_i)
s = []
n.times do
  s << gets.chomp
end
s.sort!
ans = ""
n.times do |i|
  ans += s[i]
end
puts ans

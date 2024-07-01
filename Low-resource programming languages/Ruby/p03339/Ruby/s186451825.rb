n = gets.to_i
s = gets.strip

w = Array.new(n, 0)
e = Array.new(n, 0)

t = 0
1.upto(n - 1) do |i|
  t += 1 if s[i - 1] == "W"
  w[i] = t
end

t = 0
(n - 2).downto(0) do |i|
  t += 1 if s[i + 1] == "E"
  e[i] = t
end

ans = n
0.upto(n - 1) do |i|
  a = w[i] + e[i]
  ans = a if a < ans
end

puts ans

n = gets.to_i
s = gets.chop.chars
w = Array.new(n, 0)
e = Array.new(n, 0)
for i in 1...n
  w[i] = w[i-1] + (s[i-1] == "E" ? 0 : 1)
  e[n-1-i] = e[n-i] + (s[n-i] == "W" ? 0 : 1)
end
p w.zip(e).map{|x, y| x + y}.min
n = gets.to_i
a = gets.split.map(&:to_i)
xor = 0
for i in 0...n do
  xor ^= a[i]
end
puts (xor == 0) ? "Yes" : "No"

a, b, c = gets.chomp.split(" ").map(&:to_i)
x = a
h = Hash.new()
while true
  k = (x + c) % b
  break if h.has_key?(k)
  h[k] = 1
  x += a
end
if h.has_key?(0) then
  puts "YES"
else
  puts "NO"
end

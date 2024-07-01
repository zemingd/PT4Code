a, v = gets.split(" ").map(&:to_i)
b, w = gets.split(" ").map(&:to_i)
t = gets.chomp.to_i

ad = a + v * t
bd = b + w * t

if ad >= bd
  puts "YES"
else
  puts "NO"
end

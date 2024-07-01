a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i
if v <= w
  puts "NO"
  exit
end
puts ((a-b).abs <= (v-w)*t) ? "YES" : "NO"


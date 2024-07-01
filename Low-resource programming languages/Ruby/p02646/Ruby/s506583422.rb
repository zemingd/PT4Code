a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

d1 = (a - b).abs
d2 = v - w
if d1 - (d2 * t) > 0
    puts "NO"
else
    puts "YES"
end
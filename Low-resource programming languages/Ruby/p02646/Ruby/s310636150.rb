a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i
c = (a - b).abs
u = v - w
if t * u >= c
    puts "YES"
else
    puts "NO"
end

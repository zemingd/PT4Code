a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

if w > v
  puts "NO"
  exit
end

diff = (a - b).abs
spd =  v - w

if diff.to_f / spd > t
  puts "NO"
else
  puts "YES"
end

a,v = gets.chomp.split(" ").map(&:to_i)
b,w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i

diff = (a - b).abs
if v <= w
  puts "NO"
  exit 0
end

diff2 = (v - w)
if diff % diff2 == 0 && diff2 * t >= diff
  puts "YES"
else
  puts "NO"
end

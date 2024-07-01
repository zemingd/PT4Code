A,V = gets.split(" ").map(&:to_i)
B,W = gets.split(" ").map(&:to_i)
T = gets.to_i
dis = (B - A).abs
sp = V - W

if dis - sp * T > 0
  puts "NO"
else
  puts "YES"
end
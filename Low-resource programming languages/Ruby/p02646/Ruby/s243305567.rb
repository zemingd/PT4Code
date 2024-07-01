a,v = gets.chomp.split.map(&:to_i)
b,w = gets.chomp.split.map(&:to_i)
t = gets.to_i

dist = (a-b).abs
if  (v > w && t >= dist / (v - w)) || dist == 0
	puts "YES"
else
	puts "NO"
end
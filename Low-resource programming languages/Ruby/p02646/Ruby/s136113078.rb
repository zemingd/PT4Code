a,v = gets.chomp.split.map(&:to_i)
b,w = gets.chomp.split.map(&:to_i)
t = gets.to_i

dist = (a-b).abs
len = v - w
if len * t >= dist
	puts "YES"
else
	puts "NO"
end
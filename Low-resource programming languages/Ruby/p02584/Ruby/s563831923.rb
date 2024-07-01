x, k, d = gets.chomp.split.map(&:to_i)
xfu = x < 0
x = x.abs if xfu

if x % d < x - (d * k)
	puts x - (d * k)
	exit
end

x = x % d 
k -= x / d 

x = x * (-1) if xfu 

hash = {}
k.times do |i|
	hash[x] = true
	x = x < 0 ? x + d : x - d 
	if hash.has_key?(x)
		break if i.even?
		x = x < 0 ? x + d : x - d
		break
	end
end

puts x.abs


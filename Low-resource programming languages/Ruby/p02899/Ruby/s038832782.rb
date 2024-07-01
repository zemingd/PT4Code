n = gets.to_i

d = gets.chomp.split.map(&:to_i)

res = []

(1..n).each do |i|
	res << d.index(i)+1
end

puts res.join(" ")
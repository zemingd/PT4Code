n = gets.to_i
b = Array.new(n)
f = Array.new(n)
r = Array.new(n)
v = Array.new(n)
n.times do |i|
	b[i],f[i],r[i],v[i] = gets.chomp.split(" ")
end
data = Array.new(4).map{Array.new(3)}
4.times do |i|
	3.times do |j|
		data[i][j] = [0,0,0,0,0,0,0,0,0,0]
	end
end
n.times do |i|
	data[b[i].to_i - 1][f[i].to_i - 1][r[i].to_i - 1] += v[i].to_i
end
4.times do |i|
	3.times do |j|
		data[i][j] = data[i][j].join(" ")
		print " "
		puts data[i][j]
	end
	puts "####################" if i != 3
end
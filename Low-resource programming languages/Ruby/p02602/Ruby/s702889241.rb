lines = readlines(chomp: true).map{|line| line.split(' ')}

n = lines[0][0].to_i
k = lines[0][1].to_i
a = lines[1].map!(&:to_i)

tmp = []
(k).upto(n) do |i|
	piyo = 1
	a[i-k..i-1].each do |j|
		piyo = piyo * j
	end
	tmp.push piyo
end

tmp.each_with_index do |o, i| 
	next if i == 0
	if o > tmp[i-1]
		puts "Yes"
	else
		puts "No"
	end
end
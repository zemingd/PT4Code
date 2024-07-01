def dist(x, y)
	sum = 0
	for i in 0..(x.length-1)
		xy = (x[i]-y[i]).abs
		sum += xy * xy
	end
	Math.sqrt(sum).to_s[-2..-1] == '.0'
end

def abc133b
	n,d = gets.chomp.split(/\s/).map{|x| x.to_i}

	ij = []
	for i in 1..n
		ij.push(gets.chomp.split(/\s/).map{|x| x.to_i})
	end

	num = 0
	for i in 0..(n-1)
		for j in i+1..(n-1)
			num += 1 if dist(ij[i], ij[j])
		end
	end

	puts num
end

abc133b
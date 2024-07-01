N,D=gets.chomp.split(' ').map{|n| n.to_i}
A = Array.new(N)
0.upto(N-1){|d|
	A[d]=gets.chomp.split(' ').map{|n| n.to_i}
}
P = Array.new(1000) { |i|  }
i=1
P[0] = 1
while(i*i <= 1000*1000)
	P[i] = i*i
	i += 1
end
# p P
cnt = 0
for i in 0..(N-1)
	for j in (i+1)..(N-1)
		sum = 0
		for k in 0..(D-1)
			sum += (A[i][k]-A[j][k])*(A[i][k]-A[j][k])
		end
		# p sum
		P.index(sum).nil? ? 0 : cnt += 1
	end
end

puts cnt

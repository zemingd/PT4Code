N,M=gets.chomp.split(' ').map{|n| n.to_i}
A = Array.new(M)
0.upto(M-1){|d|
	A[d]=gets.chomp.split(' ').map{|n| n.to_i}
}
A.sort!{|a,b| a[1] <=> b[1]}
# p A

left = -1
cnt = 0
for i in 0..(M-1)
	a = A[i][0]
	b = A[i][1]
	if(a <= left && left < b)
		next
	else
		# puts b-1
		left = b-1
		cnt += 1
	end
end
puts cnt

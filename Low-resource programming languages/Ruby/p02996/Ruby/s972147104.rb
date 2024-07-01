N,_=gets.chomp.split(' ').map{|n| n.to_i}
A = Array.new(N)
0.upto(N-1){|d|
	A[d]=gets.chomp.split(' ').map{|n| n.to_i}
}
Asort = A.sort{|a,b|a[1]<=>b[1]}
# p Asort
sum = 0
for i in 0..(N-1)
	t = Asort[i][0]
	d = Asort[i][1]
	sum += t
	if(sum > d)
		puts "No"
		exit(0)
	end
end
puts "Yes"
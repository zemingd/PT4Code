N=gets.chomp.to_i
A=gets.chomp.split.map(&:to_i)
B=gets.chomp.split.map(&:to_i)
C=gets.chomp.split.map(&:to_i)
ans=0
A.each_with_index do |e,i|
	if i==0
		next
	end
	if A[i]-A[i-1] == 1
		ans+=C[A[i-1]-1]
	end
end
puts ans+B.inject(:+)
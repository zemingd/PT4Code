N,M=gets.split.map(&:to_i)
hate=Array.new(M+1,N)
N.times{
	ar=gets.split.map(&:to_i)
	for i in 1..ar[0]
		hate[ar[i]]-=1
	end
}
puts hate.count{|e|e==0}
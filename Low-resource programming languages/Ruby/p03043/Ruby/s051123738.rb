N, K = gets.strip.split.map(&:to_i)

ans=0.0

(1..N).each do |i|
	if K<=i
	  ans+=(1.0/N)
	  next
	end
	x=1.0
	j=i
	while j<K
		j*=2
		x*=0.5
	end
	ans+=(1.0/N)*x;
end




puts ans

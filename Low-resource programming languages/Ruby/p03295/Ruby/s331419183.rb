N,M=gets.split.map(&:to_i)
as=M.times.map{gets.split.map(&:to_i)}.map{|x|x[0]*(N+1)+x[1]}
as.sort!{|a,b|(a % (N+1)<=>b % (N+1))}
cnt=0
lb=0
as.each do |i|
	f=i / (N+1)
	s=i % (N+1)
	if lb < f
		cnt+=1
		lb=s-1
	end
end
puts cnt

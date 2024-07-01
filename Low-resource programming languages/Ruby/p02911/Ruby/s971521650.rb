N,K,Q = gets.split.map &:to_i

a = Array.new(N, 0)

sum = 0

Q.times{
	a[gets.to_i - 1] += 1 
}

a.each{ |ai|
	if K - Q + ai > 0 then
		puts 'Yes'
	else
		puts 'No'
	end
}
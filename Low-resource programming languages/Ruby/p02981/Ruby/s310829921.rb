N,A,B = gets.split(' ').map(&:to_i)

if N*A <= B
	p N*A
else
	p B
end
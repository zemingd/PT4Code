N = gets.to_i

a = 1
res = 114514
while a * a <= N do
	if N % a == 0 then
		b = N / a
		res = [ res, [ a, b ].map( &:to_s ).map( &:length ).max ].min
	end
	a += 1
end

puts res

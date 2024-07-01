S=gets.chomp
l=S.length
min=753
for i in 0..l-3
	s=S[i..i+2].to_i
	dif=(s>753)?(s-753):(753-s)
	if dif<min
		min=dif
	end
end
puts min
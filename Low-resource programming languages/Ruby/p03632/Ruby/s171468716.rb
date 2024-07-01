A,B,C,D = gets.chomp.split.map(&:to_i)
if A>=C
	first = A
else
	first = C
end
if B>=D
	last = D
else
	last = B
end
puts first
puts last
if B < C 
	puts 0
else
	puts last - first
end
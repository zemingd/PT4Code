n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

as = a.size
asa = a.uniq.size

if as == asa
	puts 'YES'
else
	puts 'NO'
end

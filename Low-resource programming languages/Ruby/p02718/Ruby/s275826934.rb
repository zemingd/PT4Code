n,m = gets.split.map &:to_i
as = gets.split.map &:to_i

sum = as.inject(:+)

lim = sum / 4.0 / m

if as.select{ |x| x >= lim }.size >= m then
	puts 'Yes'
else
	puts 'No'
end

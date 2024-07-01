h, n = gets.split.map &:to_i
as = gets.split.map &:to_i

if h <= as.inject(:+) then
	puts 'Yes'
else
	puts 'No'
end

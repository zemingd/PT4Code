n = gets
as = gets.split.map &:to_i

check = {}

as.each{ |a|
	if check[a] == nil then
		check[a] = true
	else
		puts 'NO'
		exit
	end
}

puts 'YES'

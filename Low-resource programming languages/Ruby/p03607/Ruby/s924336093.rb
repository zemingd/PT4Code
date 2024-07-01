require 'set'

n = gets.to_i

sheet = Set.new

n.times do 
	x = gets.to_i
	if sheet.include?(x)
		sheet.delete(x)
	else
		sheet.add(x)
	end
end

p sheet.size
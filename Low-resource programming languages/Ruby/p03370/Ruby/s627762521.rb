B,C = gets.chomp.split.map(&:to_i)
menu = []
B.times do 
	line = gets.chomp.to_i
	menu.push line
end
l = C-menu.inject(:+)
p l/menu.min+menu.size
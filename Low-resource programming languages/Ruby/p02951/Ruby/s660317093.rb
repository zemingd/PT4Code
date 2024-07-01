a,b,c = gets.split.map &:to_i
un = c - (a-b) 
puts un >= 0 ? un : 0
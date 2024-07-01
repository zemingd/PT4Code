x,y=gets.chomp.split.map(&:ord)
puts x==y ? "=" : x>y ? ">" : "<"
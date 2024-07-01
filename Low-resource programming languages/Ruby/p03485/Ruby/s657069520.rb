a,b = gets.chomp.split.map(&:to_i)
p (a+b)/2+((a+b)%2 != 0 ? 1 : 0)
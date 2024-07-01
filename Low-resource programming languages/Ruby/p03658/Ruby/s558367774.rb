_,k = gets.chomp.split.map(&:to_i)
el = gets.chomp.split.map(&:to_i).sort.reverse

p el[0..k-1].inject(:+)
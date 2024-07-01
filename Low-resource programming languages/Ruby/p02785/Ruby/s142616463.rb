_,k=gets.split.map(&:to_i)
h=gets.split.map(&:to_i).sort.reverse
h.slice!(0,k)
puts h.sum
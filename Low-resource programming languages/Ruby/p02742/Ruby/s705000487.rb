h, w = gets.chomp.split.map(&:to_i)

all = h*w
puts all/2 if all.even?
puts ((all/2) + 1) if all.odd?
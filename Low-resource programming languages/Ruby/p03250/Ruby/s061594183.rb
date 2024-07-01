a=gets.chomp.split.map(&:to_i).sort.reverse
p a[0,2].join.to_i+a[2]

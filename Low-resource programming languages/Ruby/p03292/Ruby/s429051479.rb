a = gets.split.map(&:to_i).sort
p a[1] - a[0] + a[2] - a[1]
a=gets.chomp.split.map(&:to_i).sort
puts (a[1] - a[0]).abs + (a[2] - a[1]).abs

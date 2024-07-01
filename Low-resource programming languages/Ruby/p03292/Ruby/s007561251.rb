a = gets.chomp.split(/ /).collect(&:to_i).sort
puts(a[2] - a[0])
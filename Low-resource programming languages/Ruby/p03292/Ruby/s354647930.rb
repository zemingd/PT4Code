a = gets.split.map(&:to_i).sort
puts a[2]-a[1]+(a[1]-a[0])
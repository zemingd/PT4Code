a=gets.split.map(&:to_i)
b=gets.chomp
b[a[1]-1].downcase!
puts b
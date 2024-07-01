a=gets.chomp.to_i
b=gets.chomp.split.map(&:to_i).sort!
puts b[a/2]-b[a/2-1]

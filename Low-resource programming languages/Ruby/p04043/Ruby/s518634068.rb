io = STDIN
m=io.gets.chomp.split.map(&:to_i)
puts m.sort == [5,5,7] ? 'YES' : 'NO'
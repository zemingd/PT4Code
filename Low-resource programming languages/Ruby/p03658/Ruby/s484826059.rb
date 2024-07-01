n,k = gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i)

hebi = l.sort.reverse

puts hebi[0]+hebi[1]+hebi[2]
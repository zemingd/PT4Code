n,k=gets.split.map(&:to_i)
monsters=gets.split.map(&:to_i)
m = monsters.sort.reverse!
m.slice!(0, k)
puts m.sum
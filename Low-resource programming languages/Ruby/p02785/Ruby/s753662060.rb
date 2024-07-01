n,k=gets.split.map(&:to_i)
monsters=gets.split.map(&:to_i)
monsters.sort.reverse
monsters.slice!(0, k)
puts monsters.sum
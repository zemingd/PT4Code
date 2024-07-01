n,k=gets.split.map(&:to_i)
monsters=gets.split.map(&:to_i)
m = monsters.sort.reverse
k.times { m.shift }
puts m.inject(:+)
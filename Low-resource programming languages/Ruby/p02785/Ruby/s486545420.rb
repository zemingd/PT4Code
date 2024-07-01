n,k=gets.split.map(&:to_i)
monsters=gets.split.map(&:to_i)
m = monsters.sort.reverse
k.times { m.shift }
puts m.length == 0 ? 0 : m.inject(:+)
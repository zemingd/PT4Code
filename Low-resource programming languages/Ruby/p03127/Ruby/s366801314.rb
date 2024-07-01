N = gets.chomp.to_i
monsters = gets.chomp.split.map(&:to_i)
hp = monsters[0]
N.times do |i|
  hp = hp.gcd(monsters[i])
end
puts hp

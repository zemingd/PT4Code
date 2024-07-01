n = gets.to_i
monsters_hp = gets.chomp.split(' ').map(&:to_i)
while(monsters_hp.length > 1)
  x = monsters_hp.min
  monsters_hp.map!{|hp| hp % x}.delete(0)
  monsters_hp.push(x)
end

puts monsters_hp[0]
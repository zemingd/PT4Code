n = gets.to_i
monsters = gets.split(" ").map(&:to_i)
monsters.sort!
while monsters.length > 1 do
  tmp = monsters.last % monsters.first
  monsters.pop
  if tmp != 0
    monsters.unshift(tmp)
  end
end
puts monsters[0]
h = gets.to_i
monsters = [h]
count = 0

until monsters.empty?
  _monster = monsters[0]
  if _monster == 1
    monsters = monsters.drop(1)
  else
    monsters = monsters.drop(1)
    monsters << (_monster / 2)
    monsters << (_monster / 2)
  end
  count += 1
end

puts count
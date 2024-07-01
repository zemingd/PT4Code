n = gets.to_i
monsters = gets.split(" ").map(&:to_i)
while true do
  monsters.sort!.reverse!
  if monsters[1] != 0
    monsters[0] = monsters[0] % monsters[1]
  else
    puts monsters[0]
    exit
  end
end
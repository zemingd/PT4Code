n = gets.to_i
monster = gets.split(" ").map(&:to_i)
monster.sort

min_monster = monster[1] % monster[0]

min_monster.downto(1) do |min|
  if monster.count == monster.count {|m| m % (min) == 0}
    puts min
    break
  end
end

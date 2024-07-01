def count_attack(monsters, count, memo)
  return count if monsters.empty?

  new_monsters = monsters.map do |h|
    count += 1
    new_h = h / 2
    if memo[new_h]
      count += memo[new_h] * 2
      next
    end

    [new_h] * 2
  end.flatten.compact

  count_attack(new_monsters, count, memo)
end

hp = gets.to_i
hp_availables = [hp]
memo = { 1 => 1 }

if hp > 1
  while hp > 1
    hp /= 2
    hp_availables.unshift(hp) if hp > 1
  end
  
  hp_availables.each do |h|
    count = count_attack([h], 0, memo)
    memo[h] = count
  end
end

puts memo[hp_availables.last]

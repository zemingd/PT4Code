hp = $stdin.gets.to_i

$memo = {}
$memo[1] = 1

def attack(hp)
#  puts "hp:#{hp}"
  if hp == 1
    return 1
  else
    new_monster_hp = hp / 2
    if $memo[new_monster_hp]
      return $memo[new_monster_hp] * 2 + 1
    else
      return attack(new_monster_hp) * 2 + 1
    end
  end
end

puts attack(hp)

n, k = gets.split.map(&:to_i)

s = n
a = gets.split.map(&:to_i).sort.reverse

monster_hp = a.drop(k).sum


count = 0

while monster_hp > 0 do
  monster_hp -= 1
  count += 1
end

puts count
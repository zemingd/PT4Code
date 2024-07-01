line = gets.split(' ')

monster_count = line[0].to_i
skill_count = line[1].to_i

monsters = gets.split.map(&:to_i)

puts monsters
if monster_count <= skill_count
  puts 0
else
  monsters.sort!.reverse!

  monsters.slice!(0..(skill_count - 1)) if skill_count != 0
  count = 0
  monsters.each {|monster| count += monster }

  puts count
end
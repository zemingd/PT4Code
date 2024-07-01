line = gets.split(' ')

monster = line[0].to_i
hit = line[1].to_i
count = 1

if monster <= hit
elsif (monster%hit) == 0
  count = monster/hit
else
  count = (monster/hit) + 1
end

puts count

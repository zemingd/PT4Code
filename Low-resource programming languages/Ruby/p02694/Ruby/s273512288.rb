x = gets.chomp.to_i

cnt = 0
yokin = 100
while yokin < x
#  p "cnt: #{cnt}, yokin: #{yokin}"
  yokin += yokin/100
  cnt += 1
end

print cnt
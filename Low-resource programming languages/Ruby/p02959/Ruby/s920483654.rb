N = gets.chomp.to_i
monster = gets.chomp.split(" ").map(&:to_i)
breaves_power = gets.chomp.split(" ").map(&:to_i)

total_beated = 0
for town in 0...N do
  breave_power = breaves_power[town]
  beated1 = 0
  beated2 = 0

  if monster[town] > 0
    beated1 = breave_power - monster[town]
    if beated1 < 0
      beated1 = breave_power
    else
      beated1 = monster[town]
    end
    breave_power -= beated1
    monster[town] -= beated1
  end

  if monster[town+1] > 0
    beated2 = breave_power - monster[town+1]
    if beated2 < 0
      beated2 = breave_power
    else
      beated2 = monster[town+1]
    end
    monster[town+1] -= beated2
  end

  total_beated += beated1 + beated2
end

p total_beated

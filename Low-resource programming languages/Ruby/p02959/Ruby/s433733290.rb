N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)
B = gets.chomp.split(" ").map(&:to_i)

monster = A.dup
breaves_power = B.dup

total_beated = 0
breaves_power.reverse_each{ |breave_power|
  town = B.index(breave_power)
  beated1 = 0
  beated2 = 0

  if monster[town+1] > 0
    beated1 = breave_power - monster[town+1]
    if beated1 <= 0
      beated1 = breave_power
    else
      beated1 = monster[town+1]
    end
    breave_power -= beated1
    monster[town+1] = monster[town+1] - beated1
  end

  if monster[town] > 0
    beated2 = breave_power - monster[town]
    if beated2 <= 0
      beated2 = breave_power
    else
      beated2 = monster[town]
    end
    monster[town] = monster[town] - beated2
  end

  total_beated += beated1 + beated2
}

p total_beated

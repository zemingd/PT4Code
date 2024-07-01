a, b, c, d = gets.chomp.split(" ").map(&:to_i)
alice_ary = []
bob_ary = []
count = 0
0.upto(99) do |num|
  if num >= a && num <b
    alice_ary[num] = 1
  else
    alice_ary[num] = 0
  end
  if num >= c && num <d
    bob_ary[num] = 1
  else
    bob_ary[num] = 0
  end
  if alice_ary[num] == 1 && bob_ary[num] == 1
    count += 1
  end
end
puts count
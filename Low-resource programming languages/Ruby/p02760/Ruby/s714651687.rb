card = Array.new(3){gets.split.map(&:to_i)}.flatten
gets.to_i.times do
  idx = card.index(gets.to_i)
  card[idx] = '*' if idx
end
bingo = false
3.times do |i|
  l = card[i * 3, 3]
  bingo = true if l == ['*', '*', '*']
end
3.times do |j|
  l = []
  3.times do |i|
    l << card[i * 3 + j]
  end
  bingo = true if l == ['*', '*', '*']
end
l = []
l << card[0]
l << card[4]
l << card[8]
bingo = true if l == ['*', '*', '*']
l = []
l << card[2]
l << card[4]
l << card[6]
bingo = true if l == ['*', '*', '*']
puts bingo ? 'Yes' : 'No'

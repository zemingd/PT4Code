n, m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)
min = cards.min
m.times do
  b, c = gets.split.map(&:to_i)
  if c > min
    b.times do
      cards << c
    end
  end
end

sum = 0
n.times do
  current_max = cards.max
  sum += current_max
  cards.delete_at(cards.index(current_max))
end

puts sum

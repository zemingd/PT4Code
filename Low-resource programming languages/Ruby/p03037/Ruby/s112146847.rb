N,M = gets.chomp.split.map(&:to_i)
cards = (1..N).to_a

M.times do
  l, r = gets.chomp.split.map(&:to_i)
  gate = (l..r).to_a
  cards = cards & gate
end

puts cards.length

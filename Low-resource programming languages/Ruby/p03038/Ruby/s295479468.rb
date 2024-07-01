n, m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)
m.times do
  b, c = gets.split.map(&:to_i)
  b.times do
    cards << c
  end
end
puts cards.sort[-n..-1].inject(:+)

n, m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i).sort
changes = []
m.times do
  b, c = gets.split.map(&:to_i)
  changes << {num: c, count: b}
end
changes.sort! { |a, b| b[:num] <=> a[:num] }
used = 0
until used > n || changes.empty?
  current = changes.shift
  used += current[:count]
  current[:count].times do
    cards << current[:num]
  end
end
puts cards.sort[-n..-1].inject(:+)

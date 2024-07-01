N, M = gets.chomp.split.map(&:to_i)
cards = gets.chomp.split.map(&:to_i)

M.times do
  b, c = gets.chomp.split.map(&:to_i)
  cards += Array.new(b) {c}
end

puts cards.sort.reverse.slice(0, N).inject(&:+)

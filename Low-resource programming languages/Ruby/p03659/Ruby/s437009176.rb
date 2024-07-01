gets
cards = gets.chomp.split(' ').map(&:to_i).sort
sunuke = cards.inject(:+)
arai = 0
i = 0
result = 0
loop do
  sunuke -= cards[i]
  arai += cards[i]
  if sunuke - arai < 0
    puts result
    break
  end
  if i == cards.count - 2
    puts sunuke - arai
    break
  end
  result = sunuke - arai
end

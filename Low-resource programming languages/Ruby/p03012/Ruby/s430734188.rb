n = gets.to_i
weigh = gets.chomp.split.map(&:to_i)
hevy = 0
ligh = 0
weigh.length.times do
  if hevy <= ligh
    hevy += weigh.pop
  elsif hevy > ligh
    ligh += weigh.shift
  end
end
puts((hevy-ligh).abs)
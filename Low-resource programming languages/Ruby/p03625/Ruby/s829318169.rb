n = gets.to_i
lines = gets.split.map(&:to_i)

tally = lines.tally

selected = []

tally.keys.sort.reverse.each do |length|
  next if tally[length] < 2

  if tally[length] >= 4
    selected.push length, length
  else
    selected.push length
  end

  break if selected.size == 2
end

answer = selected.size == 2 ? selected.first * selected.last : 0

puts answer

n = gets.to_i
lines = gets.split.map(&:to_i)

tally = lines.tally

selected = []

tally.keys.sort.reverse.each do |length|
  next if tally[length] < 2

  selected.push length

  if tally[length] >= 4 && selected.size == 1
    selected.push length
  end

  break if selected.size == 2
end

answer = selected.size == 2 ? selected.first * selected.last : 0

puts answer

n = gets.to_i
numbers = gets.split.map(&:to_i)
q = gets.to_i
replacing = []
q.times do
  replacing << gets.split.map(&:to_i)
end

tally = numbers.tally
tally.default = 0
sum = numbers.sum

replacing.each do |before, after|
  sum = sum + tally[before] * (after - before)
  tally[after] += tally[before]
  tally[before] = 0
  puts sum
end

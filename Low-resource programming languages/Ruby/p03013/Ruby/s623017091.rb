n, m = gets.split(" ").map(&:to_i)
brokens = []
brokens.push(0)
m.times do
  brokens.push(gets.to_i)
end
brokens.push(n)

brokens.reverse!

gaps = []

(brokens.length - 1).times do |index|
  if index == 0 || index == m
    gaps.push(brokens[index] - brokens[index + 1])
  else
    gaps.push(brokens[index] - brokens[index + 1] - 1)
  end
end

# puts gaps
# puts ""

sums = []
sums.push(0)
sums.push(1)
100.times do |index|
  sums.push(sums[index] + sums[index + 1])
end
# puts sums

multipliers = []

answer = 1

gaps.each do |gap|
  multipliers.push(sums[gap])
end

# puts multipliers
# puts ""

gaps.pop
gaps.shift

gaps.each do |gap|
  if gap == 1
    answer = 0
  end
end

# puts multipliers

multipliers.each do |multiplier|
  answer *= multiplier
end

puts answer  % 1000000007
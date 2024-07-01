n, m = gets.split(" ").map(&:to_i)
brokens = []
# brokens.push(0)
m.times do
  brokens.push(gets.to_i)
end
# brokens.push(n)

brokens.reverse!

gaps = []

(brokens.length - 1).times do |index|
  # if index == 0 || index == m
  #   gaps.push(brokens[index] - brokens[index + 1])
  # else
    gaps.push(brokens[index] - brokens[index + 1] - 1)
  # end
end
# gaps.push(n -brokens.last)
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

# gaps.pop
# gaps.shift

gaps.each do |gap|
  if gap == 0
    answer = 0
  end
end

multipliers.each do |multiplier|
  answer *= multiplier
  answer = answer % 1000000007
end

# puts sums[n - brokens.last]
# puts sums[brokens.first]

# puts ""

# puts brokens
# puts sums[brokens.first]

answer *= sums[n - brokens.first]
answer = answer % 1000000007
answer *= sums[brokens.last]
answer = answer % 1000000007

puts answer
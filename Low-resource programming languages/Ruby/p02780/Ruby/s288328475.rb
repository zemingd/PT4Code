n, k = gets.chomp.split.map(&:to_i)
dices = gets.chomp.split.map { |n| (1 + n.to_f) / 2.0 }

ans = 0
current = 0
target = []

n.times do |i|
  if i < k
    current += dices[i]
    target << dices[i]
    next
  end

  previous = target.shift
  target.push dices[i]
  current = current - previous + dices[i]

  ans = current if current > ans
end

ans = current if ans.zero?

puts ans

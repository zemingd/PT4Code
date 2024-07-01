def calc_expectation(arr)
  arr.inject(0) do |sum, num|
    # 1..numまでの総和は,(num * num + 1) / 2で求まる
    sum += num * (num + 1) / 2 / num.to_f
  end
end

def max(arr)
  arr.inject(&:+)
end

n, k = gets.chomp.split.map(&:to_i)
dices = gets.chomp.split.map(&:to_i)

expectation = 0

n.times do |i|
  target = dices[i...i+k]
  break if target.size < k
  next if i > 0 && max(target) <= max(dices[i-1...i-1+k])

  tmp = calc_expectation(target)
  expectation = tmp if tmp > expectation
end

puts expectation

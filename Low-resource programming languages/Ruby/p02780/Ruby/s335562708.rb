def calc_expectation(arr)
  arr.sum do |num|
    [*1..num].inject(&:+) / num.to_f
  end
end

n, k = gets.chomp.split.map(&:to_i)
dices = gets.chomp.split.map(&:to_i)

expectation = 0

n.times do |i|
  target = dices[i...i+k]
  break if target.size < k

  tmp = calc_expectation(target)
  expectation = tmp if tmp > expectation
end

puts expectation

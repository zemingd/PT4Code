n, k = gets.chomp.split.map(&:to_i)
dices = gets.chomp.split.map(&:to_i)

expectation = 0
expects = {}

n.times do |i|
  target = dices[i...i+k]
  break if target.size < k
  
  tmp = target.inject(0) do |sum, value|
    expects[value] ||= (1 + value) / 2.0
    sum += expects[value]
  end

  expectation = tmp if tmp > expectation
end

puts expectation

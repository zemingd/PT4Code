n, k = gets.split(' ').map!(&:to_i)
arr = gets.split(' ').map!(&:to_i)

expectation = arr.map.with_index do |e, i|
  total = (1..e).to_a.inject(&:+)
  total / e.to_f
end

max = 0
expectation.size.times do |i|
  sum = expectation[i, k].inject(&:+)
  if max < sum
    max = sum
  end
end

puts max

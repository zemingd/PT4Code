memo = Hash.new { |h, k|
  h[k] = h[k / 2] * 2 + 1
}

memo[1] = 1

puts memo[gets.to_i]

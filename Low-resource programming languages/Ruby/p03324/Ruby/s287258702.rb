d, n = gets.split.map(&:to_i)

nums = []
(0..2).each do |i|
  nums[i] = (1..(2*n)).to_a.map {|e| (100 ** i) * e }
end
(0..2).each do |i|
  ([0, 1, 2] - [i]).each do |j|
    nums[i] -= nums[j]
  end
end

puts nums[d][n-1]

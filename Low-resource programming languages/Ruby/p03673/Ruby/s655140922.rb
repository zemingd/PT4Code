n = gets.to_i
nums = gets.split.map(&:to_i)

res = []
nums.each_with_index do |num, idx|
  res << num
  res.reverse!
end

puts res.join(' ')
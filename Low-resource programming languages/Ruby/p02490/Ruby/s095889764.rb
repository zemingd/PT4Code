loop do
  nums = gets.chomp.split.map(&:to_i)
  break if nums.all? { |n| n.zero? }
  puts nums.sort.join(' ')
end
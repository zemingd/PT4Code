a, b, c = gets.chomp.split.map(&:to_i)

nums = [a, b, c].sort.reverse

puts "#{nums[0]}#{nums[1]}".to_i + nums[2].to_i
n = gets.to_i
hash = Hash.new(0)
nums = gets.split.map(&:to_i)
nums.each do |num|
  hash[num] += 1
  hash[num - 1] += 1
  hash[num + 1] += 1
end
puts hash.values.max
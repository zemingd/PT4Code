n = gets.to_i
nums = gets.split.map(&:to_i)
if nums.size == nums.uniq.size
  puts "YES"
else
  puts "NO"
end

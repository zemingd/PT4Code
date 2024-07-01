n = gets.to_i
nums = gets.split.map(&:to_i)
if nums.uniq.length == n
  puts "YES"  
else
  puts "NO"
end
n = gets.to_i
nums = gets.chomp.split(" ").map(&:to_i)

if nums.uniq.size == n
  puts "YES"
else
  puts "NO"
end

a,b,c= gets.split.map(&:to_i)
nums = [a, b, c]
nums = nums.sort
if nums == [5, 5, 7]
  puts "YES"
else
  puts "NO"
end
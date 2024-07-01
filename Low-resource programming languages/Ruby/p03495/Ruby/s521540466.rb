n, k = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)
 
nums_count = nums.group_by(&:itself).map{ |key, value| value.size }
nums_count.sort!
delete = 0

if nums_count.size > k
  (0...nums_count.size - k).each do |i|
    delete += nums_count[i]
  end
  puts delete
else
  puts 0
end
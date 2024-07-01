n = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)

change_count = 0
for i in 0..(n-1) do

   (n-1).downto(1) do |j|
      if nums[j] < nums[j-1]

         temp = nums[j]
         nums[j] = nums[j-1]
         nums[j-1] = temp
         change_count += 1

      end

   end

end

nums.each_with_index do |val, idx|

   if idx == nums.count - 1

      puts val

   else

      print "#{val} "

   end

end
puts change_count
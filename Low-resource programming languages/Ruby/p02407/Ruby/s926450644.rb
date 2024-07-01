n = gets.to_i
nums = gets.split.map(&:to_i)
nums = nums.sort!{|a,b| b <=> a}

nums.each_with_index do |val, idx|
   if idx == (n - 1)
      print "#{val}\n"
   else
      print "#{val} "
   end
end
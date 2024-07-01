n = gets.chomp.to_i
nums = gets.split.map(&:to_i).reverse

nums.each_with_index do |val, idx|
   if idx == (n - 1)
      print "#{val}\n"
   else
      print "#{val} "
   end
end
n = gets.to_i

nums = []
(1..n).each do |i|
   if i % 3 == 0
      nums << i
   elsif i.to_s =~ /3/
      nums << i
   end
end

nums.each do |num|
   print " #{num}"
end
puts ""
n = gets.chomp.to_i
a = gets.chomp.split().map(&:to_i)

nums = 1.upto(a.size)

puts a.zip(nums).sort_by{|x,y| x}.map{|x,y| y}.join(' ')
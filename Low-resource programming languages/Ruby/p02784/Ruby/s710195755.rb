h,n=gets.chomp.split.map(&:to_i)
a=gets.chomp.split.map(&:to_i)
puts h-a.inject(:+)<=0 ? "Yes" : "No"
h,n = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
if as.inject(:+) >= h
  puts "Yes"
else
  puts "No"
end
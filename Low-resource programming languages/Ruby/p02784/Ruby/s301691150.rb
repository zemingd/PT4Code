h, n = gets.chomp.split.map(&:to_i)
ary1 = gets.chomp.split.map(&:to_i)
sum = ary1.inject(&:+)
if sum >= h
  puts "Yes"
else
  puts "No"
end

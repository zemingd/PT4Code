n = gets.chomp.to_i
ary1 = gets.chomp.split(" ").map(&:to_i)
if ary1.uniq == n
  puts "Yes"
else
  puts "No"
end

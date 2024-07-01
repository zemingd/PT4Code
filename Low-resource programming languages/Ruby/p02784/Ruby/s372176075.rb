h,n=gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

atk = a.sum
if h <= a.sum
  puts "Yes"
else
  puts "No"
end

n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
a = a.sort.reverse
if a[m-1] >= a.sum/(4*m)
  puts "Yes"
else
  puts "No"
end
a = [[1,3,5,7,8,10,12],[4,6,9,11],[2]]
x,y = gets.chomp.split(" ").map(&:to_i)
if (a[0].include?(x) && a[0].include?(y)) || (a[1].include?(x) && a[1].include?(y)) || (a[2].include?(x) && a[2].include?(y))
  puts "Yes"
else
  puts "No"
end
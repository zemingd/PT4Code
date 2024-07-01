x,y = gets.chomp.split(" ").map(&:to_i)
a = [1,3,5,7,8,10,12]
b = [4,6,9,11]
c = [2]

if a.include?(x) && a.include?(y)
  puts "Yes"
elsif b.include?(x) && b.include?(y)
  puts "Yes"
elsif x == 2 && y == 2
  puts "Yes"
else
  puts "No"
end
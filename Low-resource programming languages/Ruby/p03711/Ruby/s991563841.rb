a = [1,3,5,7,8,10,12]
b = [4,6,9,11]
c = [2]

x = gets.chomp.to_i
y = gets.chomp.to_i

if a.include?(x) && a.include?(y) then
  puts "Yes"
elsif b.include?(x) && b.include?(y) then
  puts "Yes"
elsif c.include?(x) && c.include?(y) then
  puts "Yes"
else
  puts "No"
end
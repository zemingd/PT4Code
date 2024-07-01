x, y = gets.chomp.split.map(&:to_i)
g1 = [1, 3,5,7,8,10,12]
g2 = [4,6,9,11]
g3 =[2]
if g1.include?(x) and g1.include?(y) then
  puts 'Yes'
elsif g2.include?(x) and g2.include?(y) then
  puts 'Yes'
elsif g3.include?(x) and g3.include?(y)
  puts 'Yes'
else
  puts 'No'
end
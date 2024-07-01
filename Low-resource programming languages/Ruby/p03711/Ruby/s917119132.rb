x,y=gets.split.map &:to_i
a=[1,3,5,7,8,10,12]
b=[4,6,9,11]
c=[2]
if a.include?(x) && a.include?(y)
  puts 'Yes'
elsif b.include?(x) && b.inlucde?(y)
  puts 'Yes'
elsif c.include?(x) && b.include?(y)
  puts 'No'
end

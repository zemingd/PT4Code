x,y=gets.split.map &:to_i
a=[1,3,5,7,8,10,12]
b=[4,6,9,11]
c=[2]
if (a.include?(x) && a.include?(y)) || (b.include?(x) && b.inlucde?(y)) || (c.include?(x) && c.include?(y))
  puts 'Yes'
else
  puts 'No'
end
#puts xy.all?{|i| a.include?(i) || b.include?(i) || c.include?(i)} ? 'Yes' : 'No'
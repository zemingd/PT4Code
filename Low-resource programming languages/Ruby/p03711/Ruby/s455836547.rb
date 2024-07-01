xy=gets.split.map &:to_i
a=[1,3,5,7,8,10,12]
b=[4,6,9,11]
c=[2]
puts xy.all?{|i| a.include?(i) || b.include?(i) || c.include?(i)} ? 'Yes' : 'No'
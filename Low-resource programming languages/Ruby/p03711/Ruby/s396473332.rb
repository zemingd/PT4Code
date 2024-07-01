io = STDIN

a=[1,3,5,7,8,10,12]
b=[4,6,9,11]
c=[2]
x,y=io.gets.chomp.split.map(&:to_i)
if a.include?(x) && a.include?(y) ||
   b.include?(x) && b.include?(y)
   puts 'Yes'
else
  puts 'No'
end
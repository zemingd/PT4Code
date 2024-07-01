k=gets.split(' ').last.to_i
a=gets.split(' ').map(&:to_i)
b=gets.split(' ').map(&:to_i)
c=gets.split(' ').map(&:to_i)

puts a.product(b).map {|x,y|x+y }.max(k).product(c).map {|x,y|x+y }.max(k)

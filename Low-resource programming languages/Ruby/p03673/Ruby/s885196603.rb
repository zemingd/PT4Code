b=[]
n=gets.to_i
gets.split.map(&:to_i).each.with_index{|i|i.even? ? (b<<i) : (b=[i]+b)}
b.reverse! if n.even?
puts b*" "

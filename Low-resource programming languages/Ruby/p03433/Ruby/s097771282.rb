gets
a=gets.split.map(&:to_i).sort.reverse.each_slice(2).to_a
x,y=a.shift.zip(*a).map{|e|e.map(&:to_i).reduce(:+)}
p x-y
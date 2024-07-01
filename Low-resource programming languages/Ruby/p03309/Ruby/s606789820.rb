n=gets.to_i
a=gets.split.map(&:to_i)
p a.each_with_index{|num,i|num-(i+1)}.sort.map{|num|(num-a[n/2]).abs}.inject(:+) 
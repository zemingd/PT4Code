T=[0,2,5,5,4,5,6,3,7,6]
n = gets.to_i
a = gets.split.map(&:to_i)
a = T.each_with_index.select{|x,i| a.include? i}.map{|x,i|[x,-i]}.sort.map{|x,i|[x,-i]}
t = [n-10, 0].max/a[0][0]
n-= t * a[0][0]

s = 5.times.map{|i|a.repeated_permutation(i).select{|x| x.map{|x,y|x}.inject(&:+) == n}}.flatten(1).map{|x| x.map{|x,y|y}.join.to_i}.max || ''

puts a[0][1].to_s*t + s.to_s

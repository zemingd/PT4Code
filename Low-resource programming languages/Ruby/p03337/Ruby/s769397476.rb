ary=[]
a,b=gets.split.map(&:to_i)
ary << (a+b) << (a-b) << (a*b)
puts ary.max

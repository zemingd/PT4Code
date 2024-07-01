a,b,c = gets.strip.split(" ").map(&:to_i)
array=[]
array << a
array << b
array << c
p a+b+c-array.max
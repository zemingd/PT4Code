h,w = gets.chomp.split(" ").map(&:to_i)
x,y = gets.chomp.split(" ").map(&:to_i)

o = (h-x)*(w-y)
p o

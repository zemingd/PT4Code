h,w = gets.split.map &:to_i
a,b = gets.split.map &:to_i

all = h*w

puts (all - (a*w + b*h - a*b))
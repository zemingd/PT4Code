h,w = gets.split(' ').map &:to_i
y,x = gets.split(' ').map &:to_i
puts (h-y)*(w-x)

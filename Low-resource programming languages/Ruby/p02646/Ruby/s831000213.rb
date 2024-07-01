a, v=gets.split.map &:to_i
b, w=gets.split.map &:to_i
t=gets.to_i
if a<=b
    x=a+t*v
    y=b+t*w
    puts (x>=y ? :YES : :NO)
else
    x=a-t*v
    y=b-t*w
    puts (x<=y ? :YES : :NO)
end

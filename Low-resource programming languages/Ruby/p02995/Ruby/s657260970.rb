a,b,c,d=gets.split.map &:to_i
x=b-(b/c+b/d-b/(c.lcm(d)))
y=(a-1)-((a-1)/c+(a-1)/d-(a-1)/(c.lcm(d)))
puts x-y

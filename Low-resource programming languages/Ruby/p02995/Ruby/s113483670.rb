a,b,c,d=gets.split.map(&:to_i)
e=c.lcm(d)
puts b-a+1-b/d-b/c+(a-1)/d+(a-1)/c+b/e-(a-1)/e
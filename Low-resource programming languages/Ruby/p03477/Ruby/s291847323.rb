a,b,c,d=gets.split.map &:to_i
puts [:Balanced,:Right,:Left][a+b<=>c+d]
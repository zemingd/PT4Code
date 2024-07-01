a,b,c=gets.split.map &:to_i
puts ((c-a-b)>0&&4*a*b<(c-a-b)*(c-a-b)) ? "Yes" : "No"

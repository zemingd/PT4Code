a,b=c=gets.split.map(&:to_i)
d=[b,a]
puts [a,%w(== > <)[c<=>d],b]*" "
x,a,b=gets.split.map &:to_i
puts b-a > x ? "dangerous" : a >= b ? "delicious" : "safe"
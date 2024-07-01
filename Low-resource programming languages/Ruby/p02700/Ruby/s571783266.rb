a,b,c,d=gets.split(' ').map(&:to_i)
puts (a+d-1)/d>=(c+b-1)/b ? "Yes" : "No"

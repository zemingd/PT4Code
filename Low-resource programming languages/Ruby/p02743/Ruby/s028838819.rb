a,b,c = gets.split.map(&:to_i)
puts ((a**(1/2.0)) + (b**(1/2.0)) < (c**(1/2.0)) ? "Yes" : "No") 
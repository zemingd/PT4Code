a,b,c = gets.split.map(&:to_i)
puts c**(1/2.0)-a**(1/2.0) - b**(1/2.0) - 0.00001 < 0.0 ? "No" : "Yes"
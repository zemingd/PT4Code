a,b,c = gets.split.map(&:to_i)
puts ((b-a)*(b-c)<0 && (a-c)<0) ? "Yes" : "No"
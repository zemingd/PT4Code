a,b,c=gets.chomp.split(" ").map(&:to_i);
puts([a*b, c].min)
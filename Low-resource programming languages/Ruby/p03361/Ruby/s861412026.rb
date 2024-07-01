h, w = gets.split.map(&:to_i)
s = (["."*(w+2)] + h.times.map{"." + gets.chomp + "."} + ["."*(w+2)]).map(&:chars)
puts ((1..h).to_a.product((1..w).to_a).all?{|i,j| s[i][j]=="." or [[i-1,j],[i+1,j],[i,j-1],[i,j+1]].any?{|a| s.dig(*a)=="#"}}) ? "Yes" : "No"
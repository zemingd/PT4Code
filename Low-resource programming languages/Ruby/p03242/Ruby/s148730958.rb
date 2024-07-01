n = gets.chomp.chars
n.map!{|i|(i=="1" ? "9" : (i=="9" ? "1" : i))}
p n.join.to_i
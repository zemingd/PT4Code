n=gets.to_i
a=gets.split.map(&:to_i).sort!{|a,b| b<=>a}
p a.join(" ")
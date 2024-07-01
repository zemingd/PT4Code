num,slct = gets.split(" ").map(&:to_i)
p gets.split(" ").map(&:to_i).sort{|a,b|b<=>a}.slice(0..slct-1).inject(&:+)
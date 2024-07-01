x = gets.to_i
p (1..1000).to_a.product((2..9).to_a).map{|b,p|b**p}.select{|t|t<=x}.max

t,x = gets.split(" ").map{|i|i.to_i}
puts format("%.10f",x.quo(t).to_f)
a,b,c,d=gets.split.map(&:to_i)
x=[a-c,a-b,b-c].map{|x|x.abs<=d}
puts x[0] || (x[1] && x[2]) ? "Yes" : "No"
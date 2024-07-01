A,B = gets.split.map(&:to_i)
p (A..B).count{|x|x=x.to_s;x==x.reverse}
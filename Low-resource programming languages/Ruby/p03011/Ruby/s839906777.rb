*a=gets.split.map(&:to_i);
p *a.permutation(2).map{|x,y| x+y}.min

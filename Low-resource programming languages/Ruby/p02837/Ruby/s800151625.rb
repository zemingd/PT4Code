a=(1..n=gets.to_i).map{(1..gets.to_i).map{gets.split.map &:to_i}}
p (0...2**n).map{|b|i=-1;a.all?{|t|b[i+=1]<1||t.all?{|x,y|b[x-1]==y}}?b.to_s(2).count(?1):0}.max
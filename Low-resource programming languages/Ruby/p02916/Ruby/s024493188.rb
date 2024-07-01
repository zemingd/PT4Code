n,a,b,c=(1..4).map{gets.split.map(&:to_i)}
s,p=0,nil
a.map{|i|s+=b[i-1]+(p==i-2?c[p]:0);p=i-1}
p s
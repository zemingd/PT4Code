n=gets.to_i
d=gets.split.map(&:to_i)



d2=d.each_with_object([]){|i,memo| memo[i]||=0;memo[i]+=1; }

if d[0]!=0 || d2.any?{|e| e==nil}
    print 0
    exit 0
end


r = d2.each_cons(2).map{|l,r| (l**r)%998244353 }.reduce{|l,r|  (l*r)%998244353 }
p r
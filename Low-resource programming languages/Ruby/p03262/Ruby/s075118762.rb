n,*x=`dd`.split.map(&:to_i)
n=x.sort.each_cons(2).map{|a,b|b-a}
ans = n[0]
n.each_cons(2) do |a,b|
  ans=[ans,a.gcd(b)].min
end
p ans

MOD = 1000000007
def fib(n)
	#return n+1>>1 if n<4
	return ((0.5+Math.sqrt(5)*0.5)**n/Math.sqrt(5)).round % MOD if n<70
	nb = n.bit_length-6;a=((0.5+Math.sqrt(5)*0.5)**(n>>nb)/Math.sqrt(5)).round;b=(a+a*Math.sqrt(5)).round>>1
	(nb-1).downto(0){|m|a,b=a*(2*b-a)%MOD,(b*b+a*a)%MOD;a,b=b,a+b if (n>>m).odd?}
	return a
end

def mypow(a,m)
	return a**m%MOD if m<4;c,res=a,1;while(m>0);res=res*c%MOD if m.odd?;c,m=c*c%MOD,m>>1;end;return res
end

N, M = gets.split.map(&:to_i)
return p(0) if M*2 > N
res = 1
$<.map(&:to_i).unshift(-1).push(N+1).each_cons(2).map{|x,y|y-x}.group_by(&:pred).each{|x,y|res=res*mypow(fib(x),y.size)%MOD}
p res

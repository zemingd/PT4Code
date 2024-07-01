n,m=gets.chomp.split.map(&:to_i)
x=gets.chomp.split.map(&:to_i).sort
now=Array.new(n,0)
if n>=m;puts "0";exit;end
if n==1;puts (x.max-x.min).abs;exit;end
dt = []
(x.size-1).times{|ii|dt<< x[ii+1]-x[ii]}
dt.sort!
(n-1).times{dt.pop}
p dt.inject(:+)
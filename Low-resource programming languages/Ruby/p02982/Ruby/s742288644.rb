io = STDIN
hash={}
(1..400).each{|x|hash[x**2]=true}

n,d=io.gets.split.map(&:to_i)
ar=n.times.map{io.gets.split.map(&:to_i)}
def calc1(x,y)
  sum=x.zip(y).inject(0){|s,(a,b)|(a-b)**2+s}
end
p ar.combination(2).map{|x,y|calc1(x,y)}.count{|z|hash[z]}

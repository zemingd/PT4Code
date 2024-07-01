io = STDIN
_,_,_,K=io.gets.split.map(&:to_i)
a,b,c=3.times.map{io.gets.split.map(&:to_i)}
def f(a,b)
  a.product(b).map{|x,y|x+y}.max (K)
end
puts f(f(a,b),c)

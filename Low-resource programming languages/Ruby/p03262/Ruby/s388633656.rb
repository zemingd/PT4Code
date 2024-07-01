def gcd(x,y)
  return gcd(y,x) if y > x
  y == 0 ? x : gcd(y,x%y)
end

N,X = gets.split.map(&:to_i)
Xs = gets.split.map{ |x| (x.to_i - X).abs }
p Xs[1..-1].reduce(Xs[0]){ |a,b| gcd(a,b) }
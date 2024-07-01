def gcd(a,b)
  if b == 0  
    return a
  end  
  gcd(b, a % b)
end  

n,x = gets.split.map(&:to_i)
xs  = gets.split.map{|e| e.to_i - x}
d = gcd(xs[0], gcd(xs[1]||xs[0] ,xs[2]||xs[0])).abs
puts d

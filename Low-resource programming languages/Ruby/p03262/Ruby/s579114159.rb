def gcd(a,b)
  if b == 0  
    return a
  end  
  gcd(b, a % b)
end  

n,x = gets.split.map(&:to_i)
xs  = gets.split.map{|e| e.to_i - x}
d = xs[0]
xs.each do |e|
    d = gcd(d,e)
end
puts d.abs

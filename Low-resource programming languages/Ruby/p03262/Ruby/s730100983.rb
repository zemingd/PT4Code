n,x=gets.chomp.split(" ").map(&:to_i)
xa=gets.chomp.split(" ").map(&:to_i)

if n==1
  puts xa[0]-x
else
xa.push(x)
xa.sort!
d=Array.new(n-1)
(n-1).times do|i|
  d[i]=(xa[i]-xa[i+1] ).abs
end
puts d.inject{|a,b| a.gcd(b)}
end

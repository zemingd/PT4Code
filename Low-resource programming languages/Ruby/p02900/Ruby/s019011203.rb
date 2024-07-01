a,b=gets.split.map(&:to_i)
g=a.gcd(b)
s=`factor #{g}`.split[1..-1].map(&:to_i)
p s.uniq.size+1
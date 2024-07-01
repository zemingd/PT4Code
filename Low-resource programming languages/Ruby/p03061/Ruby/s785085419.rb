n=gets.to_i
a=gets.split.map &:to_i

g=a.inject :gcd
a.map!{|e|e/g}

g0=g1=g2=0
(0...n).each do |i|
    g0=g0.gcd(a[i]) if i!=0
    g1=g1.gcd(a[i]) if i!=1
    g2=g2.gcd(a[i]) if i!=2
end
p [g*g0, g*g1, g*g2].max

n=gets.to_i
a=gets.split.map &:to_i

g=a.inject :gcd
a.map!{|e|e/g}

g0=g1=0
(0...n).each do |i|
    g0=g0.gcd(a[i]) if i!=0
    g1=g1.gcd(a[i]) if i!=1
end
p [g*g0, g*g1].max
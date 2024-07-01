k=gets.to_i
s=0
(1..k).each{|a|
(1..k).each{|b|
(1..k).each{|c|
s+=a.gcd(b).gcd(c)
}
}
}
p s
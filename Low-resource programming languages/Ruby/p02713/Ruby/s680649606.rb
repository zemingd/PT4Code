k = gets.to_i
p (1..k).sum { |a| (1..k).sum { |b| (1..k).sum { |c| a.gcd(b).gcd(c) } } }
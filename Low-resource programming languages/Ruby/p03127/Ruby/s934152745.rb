n = gets.to_i
an = gets.chomp.split.map(&:to_i).sort

p an.reduce{|acc, v| acc.gcd(v)}

n = gets.to_i
vs = gets.chomp.split(' ').map{ |v| v.to_i }

max_gcd = 0
comb = vs.dup.combination(2)
comb.each { |pair|
    gcd = pair[0].gcd(pair[1])
    max_gcd = gcd if gcd > max_gcd
}

puts max_gcd
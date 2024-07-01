K = gets.to_i

puts [*1 .. K].product([*1 .. K]).map{_1.gcd(_2)}.tally.to_a.product([*1 .. K]).map{|(a, n), b| a.gcd(b) * n}.sum
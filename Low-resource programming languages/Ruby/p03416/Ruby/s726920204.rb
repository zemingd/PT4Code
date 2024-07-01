A, B = gets.chomp.split(" ").map(&:to_i)

ans = 0
(A..B).each{|n|
  ans += 1 if ((n / 10000) == (n % 10)) && (((n / 1000) % 10) == ((n % 100) / 10))
}

puts ans

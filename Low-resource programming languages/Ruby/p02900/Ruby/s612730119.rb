require "prime"
a, b = gets.chomp.split(" ").map(&:to_i);
puts Prime.prime_division(a.gcd(b)).length + 1
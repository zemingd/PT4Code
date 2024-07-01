require 'prime'
a,b=gets.chomp.split(" ").map(&:to_i); puts a.gcd(b).prime_division.length.next
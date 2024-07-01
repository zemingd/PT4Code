require "prime"

a, b = $stdin.readline.chomp.split(' ').map(&:to_i)

cds = 1
cds += (a.prime_division.map(&:first) & b.prime_division.map(&:first)).length

puts cds

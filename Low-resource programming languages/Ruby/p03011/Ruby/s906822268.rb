p, q, r = gets.split(" ").map(&:to_i)

pqr = [p, q, r]

pqr.sort!
sum = pqr[0] + pqr[1]

puts sum
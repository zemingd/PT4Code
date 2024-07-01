N,*A = `dd`.split.map &:to_i
puts A.all?{ |a| a % 2 == 1 || a % 3 == 0 || a % 5 == 0 } ? "APPROVED" : "DENIED"
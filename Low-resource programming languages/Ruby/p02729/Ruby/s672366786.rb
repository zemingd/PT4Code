N, M = gets.chomp.split(" ").map(&:to_i)

def fact(n)
  return 1.0 if n <= 1
  return fact(n - 1) * n
end

def c(n, r)
  return (fact(n) / (fact(r) * fact(n - r))).to_i
end

sum = c(M, 2)
sum += c(N, 2)
puts sum
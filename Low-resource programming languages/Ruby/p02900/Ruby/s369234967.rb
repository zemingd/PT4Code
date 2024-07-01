A, B = gets.split.map(&:to_i)

def gcd(a, b)
  a, b = b, a if a > b
  until a == 0
    a, b = b%a, a
  end
  return b
end


require "prime"
prime_factorization = Prime.prime_division(gcd(A,B))

divisor = []
prime_factorization.each do |pf|
  divisor << pf[0]
end

ans = divisor.count + 1
p ans
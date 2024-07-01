def gcd(a, b)
  a, b = b, a if a > b
  until a == 0
    a, b = b%a, a
  end
  b
end

def lcm(a, b)
  a*b/gcd(a, b)
end

gets
as = gets.split(' ').map(&:to_i)
n = as.inject(1) {|accum,i| lcm(accum, i) } - 1
puts (as.map {|a| n % a}.sum)

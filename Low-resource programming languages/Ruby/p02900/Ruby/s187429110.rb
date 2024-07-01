require "prime"
def gcd(a,b)
  if b == 0
    a
  else
    gcd(b,a%b)
  end
end

def divisors(n)
  b = Array.new
  for i in 1..((n**0.5))
    if n % i == 0
      b.push(i)
    end
  end
  len = b.length
  len.times{|i|
    if n/b[len-1-i] != b[len-1-i]
      b.push(n/b[len-1-i])
    end
  }
  b
end

a, b = gets.chomp.split(" ").map(&:to_i)
gcd = gcd(a,b)
divisors = divisors(gcd)
ans = 0
divisors.each do |x|
  if Prime.prime?(x)
    ans += 1
  end
end
puts ans + 1
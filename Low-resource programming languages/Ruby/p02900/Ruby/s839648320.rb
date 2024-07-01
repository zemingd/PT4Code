def gcd(a,b)
  if b == 0
    a
  else
    gcd(b,a%b)
  end
end

def divided(x)
  ans = [1]
  range = (x ** 0.5).floor
  for i in 2..range
    once = false
    while x % i == 0
      x = x / i
      ans.push(i) if !once
      once = true
    end
  end
  ans
end

def divisors(n)
  b = Array.new
  for i in 1..((n**0.5))
    if n % i == 0
      b.push(i)
    end
  end
  b
end

a, b = gets.chomp.split(" ").map(&:to_i)
gcd = gcd(a,b)
divisors = divisors(gcd)
ans = 0
divisors.each do |x|
  if divided(gcd/x).length == 1
    ans += 1
  end
  if divided(x).length == 1 && x != gcd/x
    ans += 1
  end
end
puts ans
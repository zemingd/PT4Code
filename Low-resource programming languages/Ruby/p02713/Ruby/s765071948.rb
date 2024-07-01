K = STDIN.gets.to_i

def gcd(a, b, c)
  d = a.gcd(b)
  d.gcd(c)
end

sum = 0

1.upto(K) do |c|
  1.upto(K) do |b|
    1.upto(K) do |a|
      sum += gcd(a, b, c)
    end
  end
end

print sum

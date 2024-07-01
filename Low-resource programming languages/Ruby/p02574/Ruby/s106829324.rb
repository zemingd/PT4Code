N=gets.to_i
A=gets.split.map(&:to_i).sort

def prime_factor(n)
  prime = []
  2.upto(n) do |i|
    break unless i <= n / i
    while (n % i).zero?
      prime << i
      n /= i
    end
  end
  prime << n unless n == 1
  prime
end

def pc
  used=[]
  A.each do |a|
    prime_factor(a).uniq.each do |i|
      return false if used[i]
      used[i]=true
    end
  end
  true
end

def sc
  A.inject(A[0]){|s,i|s.gcd(i)}==1
end

def solve
  return "pairwise coprime" if pc
  return "setwise coprime" if sc
  "not coprime"
end

puts solve

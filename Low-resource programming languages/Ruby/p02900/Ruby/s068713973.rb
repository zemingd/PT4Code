def divisors(n)
  r = []
  1.upto(n) do |i|
    break unless i <= n / i
    next unless (n % i).zero?
    r << i
    r << n / i if i != n / i
  end
  r
end

def common(a, b)
  used=[]
  a.each do |i| used[i]=true end
  b.select{|i| used[i]}
end

A,B=gets.split.map(&:to_i)
used=[]
common(divisors(A), divisors(B)).each do |d|
  used << d if used.all?{|i|d.gcd(i)==1}
end
p used.size

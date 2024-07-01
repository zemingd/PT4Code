
def gcd(a,b)
  gcd(b,a) if b > a
  return b if (r = a % b) == 0
  gcd(b,r)
end

def gcd_a(x)
  return x[0] if x.size == 1
  (x[1..-1]).inject(x[0]) {|r, n| gcd(r,n) }
end

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
if N > 1 then
  m = 1
  (0..(N-1)).each do |i|
    p = A.dup
    p.delete_at(i)
    q = gcd_a(p)
    m = q if m < q
  end
  puts m
else
  puts A[0]
end

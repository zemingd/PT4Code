def divisors(n)
  r = []
  1.upto(n) do |i|
    break unless i <= n/i
    next unless (n%i).zero?
    r << i
    r << n/i if i != n/i
  end
  r
end

N=gets.to_i
a=[0]+gets.split.map(&:to_i)

r=[]
s=Array.new(N+1){0}
N.downto(1) do |i|
  next if a[i] == s[i]
  r << i
  divisors(i).each do |j|
    s[j] += 1
    s[j] %= 2
  end
end
if a[1] == s[1]
  p r.size
  puts r*" " unless r.size.zero?
else
  p -1
end

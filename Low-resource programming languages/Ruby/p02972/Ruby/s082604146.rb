def ok(a, b)
  1.upto(N) do |i|
    s = 0
    i.step(N, i) do |j|
      s ^= b[j]
    end
    return false if s != a[i]
  end
  true
end

def divisors(n)
  r = []
  1.upto(n) do |i|
    break unless i <= n/i
    next unless (n%i).zero?
    r << i << n/i
  end
  r.uniq
end

N=gets.to_i
a=[0]+gets.split.map(&:to_i)

b=Array.new(N+1){0}
1.upto(N) do |i|
  next if a[i].zero?
  b[i] = 1
  divisors(i).each do |j|
    b[j] ^= 1 if (i%j).zero?
  end
end
if ok(a, b)
  r=[]
  b.each.with_index do |x, i|
    r << i unless x.zero?
  end
  p r.size
  puts r*" " unless r.size.zero?
else
  p -1
end

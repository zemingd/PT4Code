def ok(a, b)
  1.upto(N) do |i|
    s=0
    i.step(N, i) do |j|
      s^=b[j]
    end
    return false if s!=a[i]
  end
  true
end

N=gets.to_i
a=[0]+gets.split.map(&:to_i)

b=Array.new(N+1){0}
1.upto(N) do |i|
  next if a[i].zero?
  b[i] = 1
  (i-1).downto(1) do |j|
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
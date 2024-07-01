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
  1.upto(1 + Math::sqrt(n).to_i).select{|i| (n%i).zero?}.map{|i| [i, n/i].uniq}.flatten
end

N=gets.to_i
a=[0]+gets.split.map(&:to_i)

r=[]
b=Array.new(N+1){0}
N.downto(1) do |i|
  next if b[i] == a[i]
  r << i
  divisors(i).each do |j|
    b[j] ^= 1
  end
end
if ok(a, b)
  p r.size
  puts r*" " unless r.size.zero?
else
  p -1
end

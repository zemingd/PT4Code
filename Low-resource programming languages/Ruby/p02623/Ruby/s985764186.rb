n,m,k = gets.chomp.split(" ").map(&:to_i)
a = (n == 0) ? "0" : "0 " + gets
b = (m == 0) ? "0" : "0 " + gets

dr = /\d/
ds = /\s/

c = []
i = 0
s = 0
max = 0
while i <= n
  s += a.scan(dr).first.to_i
  break if k < s

  j = 0
  t = s
  while j <= m
    t += (c[j] ||= b.scan(dr).first.to_i)
    break if k < t
    
    max = [i+j, max].max
    j += 1
    b.scan(ds)
  end
  i += 1
  a.scan(ds)
end
  
puts max

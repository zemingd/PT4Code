require 'prime'

N = gets.strip.to_i
A = gets.split.map(&:to_i)

a = A.sort

ma = a.last
d = Array.new(ma)
e = (1..(ma/2)).map{|x| d[x*2] = 2; x * 2 + 1}

mp = ma ** 0.5
p = 3
while p <= mp
  p = e.shift
  e.reject! do |x|
    if x % p == 0
      d[x] = p
    end
  end
end
e.each do |ee|
  d[ee] = ee
end

pc = true
ip = {}
c = Array.new(ma+1,0)
a.each_with_index do |aa,i|
  pp = nil
  while p = d[aa]
    if ip.has_key?(p)
      if ip[p] != i
        pc = false
      end
    end
    aa /= p
    ip[p] = i
    c[p] += 1 if p != pp
    pp = p
  end
end

sc = c.max != N

if pc
  puts "pairwise coprime"
elsif sc
  puts "setwise coprime"
else
  puts "not coprime"
end

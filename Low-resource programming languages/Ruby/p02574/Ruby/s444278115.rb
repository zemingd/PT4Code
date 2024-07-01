N = gets.strip.to_i
A = gets.split.map(&:to_i)

a = A.sort

ma = a.last
e = (2..ma).to_a

mp = ma ** 0.5
p = 2
d = {}
while p <= mp
  p = e.first
  e = e.select do |x|
    if x % p == 0
      d[x] = p
    end
  end
  e.shift
end

pc = true
ip = {}
c = Array.new(ma,0)
b = a.each_with_index do |aa,i|
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
  pc
end

sc = !c.empty? && c.max != N

if pc
  puts "pairwise coprime"
elsif sc
  puts "setwise coprime"
else
  puts "not coprime"
end

x,y,z,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

a = a.sort_by{|n| -n}
b = b.sort_by{|n| -n}
c = c.sort_by{|n| -n}

ai = 0
bi = 0
ci = 0

while (ai) * (bi) * (ci) <= 3000
  if a[ai+1] && b[bi+1] && c[ci+1] && a[ai+1]+b[bi]+c[ci] >= a[ai]+b[bi+1]+c[ci] && a[ai+1]+b[bi]+c[ci] >= a[ai]+b[bi]+c[ci+1]
    ai += 1
  elsif b[bi+1] && c[ci+1] && b[bi] && a[ai]+b[bi+1]+c[ci] >= a[ai]+b[bi]+c[ci+1]
    bi += 1
  else
    ci += 1
  end
end

a = a.take(ai+1)
b = b.take(bi+1)
c = c.take(ci+1)

all = a.flat_map do |aa|
  b.flat_map do |bb|
    c.flat_map do |cc|
      aa + bb + cc
    end
  end
end

puts all.sort_by{|n| -n}.take(k)
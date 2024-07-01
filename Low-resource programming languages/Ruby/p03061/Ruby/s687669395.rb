n = gets().to_i
a = gets().split(' ').map(&:to_i).uniq()
an = a.length

def ag(l)
  ln = l.length

  f = l[0]
  for i in 1..(ln - 2)
    f = f.gcd(l[i + 1])
  end
  return f
end

c = []
if an > 1
    for i in 0..(an-1)
        na = a.clone
        na.delete_at(i)
        c.push(ag(na))
    end
    puts c.max
else
    puts a[0]
end


n = gets().to_i
a = gets().split(' ').map(&:to_i).uniq()
an = a.length

def ag(l)
  ln = l.length
  puts ln
  if ln == 1
    return l[0]
  end
  f = nil
  for i in 0..(ln - 2)
    f = l[i].gcd(l[i + 1])
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


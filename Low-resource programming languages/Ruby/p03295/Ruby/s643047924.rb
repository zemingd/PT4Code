n,m=gets.chomp.split.map { |e| e.to_i  }

a=Array.new(m,0)
b=Array.new(m,0)


m.times do |i|

  a[i],b[i]=gets.chomp.split.map { |e| e.to_i  }

end

c=Array.new(m)


for i in 0..m-1
  c[i] = {'a' => a[i],'b' => b[i]}
end

def quick_sort_hash(c)
  if c==[]
    return []
  end

  smaller = c.select{ |h| h["b"] < c[0]["b"] }
  same = c.select{ |h| h["b"] == c[0]["b"] }
  larger = c.select { |h| h["b"] > c[0]["b"]  }

  return quick_sort_hash(smaller) + same + quick_sort_hash(larger)

end

e=quick_sort_hash(c)

x=-1
dp = 0

m.times do |i|
  if e[i]["a"] >= x
    dp +=1
    x=e[i]["b"]
  end
end

puts dp
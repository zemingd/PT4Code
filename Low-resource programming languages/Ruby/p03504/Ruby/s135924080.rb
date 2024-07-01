N,C=gets.chomp.split(" ").map { |e| e.to_i }
record = []
a = Array.new(C+1,[])
b = Array.new(10**5+1,0)


N.times do |i|
  s,t,c=gets.chomp.split(" ").map { |e| e.to_i }
  record[i] = {"s"=>s-1,"t"=>t-1,"c"=>c}
end

def quick_sort_hash(c,x)
  if c==[]
    return []
  end

  smaller = c.select{ |h| h[x] < c[0][x] }
  same = c.select{ |h| h[x] == c[0][x] }
  larger = c.select { |h| h[x] > c[0][x]  }

  return quick_sort_hash(smaller,x) + same + quick_sort_hash(larger,x)

end


for c in 1..C do
  same_c = record.select{ |h| h["c"] == c}
  a[c] = same_c
  a[c] = quick_sort_hash(a[c],"s")
  for x in a[c] do
    for indx in x["s"]..x["t"] do
      b[indx] += 1
    end
  end
end

max = -10**9

for i in 0..10**5 do
  max = max > b[i] ? max : b[i]
end

puts max

n,m=gets.chomp.split(" ").map { |e| e.to_i }
py = []

m.times do |i|
  p,y=gets.chomp.split(" ").map { |e| e.to_i }
  py[i] = {"py" => ("%06d" % p) + ("%06d" % y) ,"i" => i, "p" => p}
end


def quick_sort_hash(c,x)
  if c==[]
    return []
  end
  smaller = c.select{ |h| h[x] < c[0][x] }
  larger = c.select { |h| h[x] > c[0][x] }

  return quick_sort_hash(smaller,x) + [c[0]] +  quick_sort_hash(larger,x)

end

a = quick_sort_hash(py,"py")


ans = []
temp = 1
hoge = 1

for x in a do
  if hoge != x["p"]
    hoge = x["p"]
    temp = 1
  end
  ans[x["i"]] = ("%06d" % x["p"]) + ("%06d" % temp)
  temp += 1
end

puts ans

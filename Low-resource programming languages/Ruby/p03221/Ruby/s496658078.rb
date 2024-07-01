n,m=gets.chomp.split(" ").map { |e| e.to_i }
py = []

m.times do |i|
  p,y=gets.chomp.split(" ").map { |e| e.to_i }
  py[i] = {"p" => p, "y" => y}
end

def quick_sort_hash(c,x,y)
  if c==[]
    return []
  end
  same = c.select{ |h| h[x] == c[0][x] }
  samesmaller = same.select{ |h| h[y] < c[0][y]}
  samesame = same.select{ |h| h[y] == c[0][y] }
  samelarger = same.select{ |h| h[y] > c[0][y]}
  smaller = c.select{ |h| h[x] < c[0][x] }
  larger = c.select { |h| h[x] > c[0][x] }

  return quick_sort_hash(smaller,x,y) + samesmaller + samesame + samelarger + quick_sort_hash(larger,x,y)

end

py = quick_sort_hash(py,"p","y")

m.times do |i|
  p = py[i]["p"]
  y = py[i]["y"]
  a = ("%06d" % p)
  b = ("%06d" % y)
  puts a+b
end

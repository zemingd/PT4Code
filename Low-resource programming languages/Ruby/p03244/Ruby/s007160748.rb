n = gets.to_i
v = gets.split.map(&:to_i)

e = Hash.new(0)
o = Hash.new(0)

(n/2).times do |k|
  e[v[2*k]] += 1
  o[v[2*k+1]] += 1
end

es = e.to_a.sort_by {|k,v| -v}
os = o.to_a.sort_by {|k,v| -v}

if es[0][0] == os[0][0]
  if es.size == 1 && os.size == 1
    p n / 2
  elsif es.size == 1
    p n / 2 - os[0][1]
  elsif os.size == 1
    p n / 2 - es[0][1]
  else
    p [n - es[0][1] - os[1][1], n - es[1][1] - os[0][1]].min
  end
else
  p n - es[0][1] - os[0][1]
end

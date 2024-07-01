n = gets.to_i
v = gets.split.map(&:to_i)

e = Hash.new(0)
o = Hash.new(0)

n.times do |i|
  if i.even?
    e[v[i]] += 1
  else
    o[v[i]] += 1
  end
end

e.sort_by { |_,v| -v }
o.sort_by { |_,v| -v }

sube = (n/2) - e.values[0]
subo = (n/2) - o.values[0]

sube2 = e.length > 1 ? e.values[1] : 0
subo2 = o.length > 1 ? o.values[1] : 0

ans = 0
if e.keys[0] != o.keys[0]
  ans = sube+subo
else
  if subo > sube
    ans = sube + ((n/2) - subo2)
  elsif sube > subo
    ans = subo + ((n/2) - sube2)
  else
    if sube2 > subo2
      ans = subo + ((n/2) - sube2)
    else
      ans = sube + ((n/2) - subo2)
    end
  end
end

puts ans
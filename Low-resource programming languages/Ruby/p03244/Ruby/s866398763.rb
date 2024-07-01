n = gets.to_i
vs = gets.split

oc = Hash.new(0)
ec = Hash.new(0)
(0..n).each do |i|
  if i.odd?
    oc[vs[i]] += 1
  else
    ec[vs[i]] += 1
  end
end
ans = 0
oc = oc.sort { |(k1, v1),(k2,v2)| v2<=>v1 }
ec = ec.sort { |(k1, v1),(k2,v2)| v2<=>v1 }
ocmax = oc[0]
ecmax = ec[0]
if ocmax[0] == ecmax[0]
  if ocmax[1] > ecmax[1]
    ans += n - ocmax[1] - ec.dig(1,1).to_i
  else
    ans += n - ecmax[1] - oc.dig(1,1).to_i
  end
else
  ans += n - ocmax[1] - ecmax[1]
end
puts ans
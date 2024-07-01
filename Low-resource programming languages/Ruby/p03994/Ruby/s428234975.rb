s = gets.chomp
k = gets.chomp.to_i

q = s.split("")
=begin
l = q.map.with_index{|t, i| [t, i]}.sort{|a,b| a[0]<=>b[0]}
p l
z = l.select{|e| e[0] != "a"}.map{|t| ["z".ord - t[0].ord+1, t[1]]}

nxt = z[-1][0]
fix = []

while k - nxt >= 0
  s = z.pop
  k -= nxt
  fix << s[1]
  nxt = z[-1][0]
end
p z,fix,k

fix.each do |e|
  q[e] = "a"
end

s = z.pop
p q[s[1]] = ("z".ord - s[0] + k+1).chr
=end

q =q.map do |t|
 if "z".ord - t.ord  + 1 <= k && t != "a"
   k -= "z".ord - t.ord + 1
   "a"
 else
   t
 end
end
if k >0
  k = k % 26 
  #for i in 0..q.size-1
    q[-1] = (q[-1].ord + k).chr
    #k -= q[-1].ord 
    raise if q[-1].ord > "z".ord
  #end
end
puts q.join("")

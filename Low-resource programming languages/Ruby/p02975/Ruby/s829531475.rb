N,*A = `dd`.split.map &:to_i
ns = {}
A.each{ |a| ns[a] = (ns[a] || 0) + 1 }
puts case ns.size
when 1; (ns[0] || 0) > 0
when 3
  x,y,z = ns.keys
  ns[x] == ns[y] && ns[y] == ns[z] && (x ^ y) == z
else false
end ? "Yes" : "No"

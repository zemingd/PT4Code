a,b,c = gets.chomp.to_i,gets.chomp.split.map(&:to_i),gets.chomp.split.map(&:to_f)
ans = []
for aa in 0...c.size
  ans.push((b[1]-(b[0]-(c[aa]*6/1000))).abs)
end
puts ans.index(ans.min)+1
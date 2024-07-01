n = gets.to_i
rest = Array.new(n).map{Array.new()}
for i in 0..n-1
  rest[i] = gets.chomp.split
  rest[i][1] = rest[i][1].to_i
  rest[i].push(i+1)
end
rest.sort! do |a,b|
   (a[0] <=> b[0]).nonzero? || (b[1] <=> a[1])
end
n.times{|i| puts rest[i][2]}

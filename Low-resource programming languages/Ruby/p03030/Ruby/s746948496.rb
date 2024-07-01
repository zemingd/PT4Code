n = gets.to_i
i = 0
rest = Array.new(n)
n.times do
  rest[i] = gets.split
  rest[i][1] = rest[i][1].to_i 
  rest[i][2] = i+1
  i = i + 1
end
i = 0
rest = rest.sort {|a, b| (a[0] <=> b[0]).nonzero? || (b[1] <=> a[1])}
n.times do
 
	puts rest[i][2]
  	i = i + 1
end
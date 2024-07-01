n = gets.to_i
l = gets.split(" ").map(&:to_i)

l = l.combination(3).to_a
#p l

ctn = 0
i = 0
while i <= l.length-1
  if l[i][0] < l[i][1] + l[i][2] && l[i][1] < l[i][0] + l[i][2] && l[i][2] < l[i][0] + l[i][1]
  	ctn += 1
  end
  i += 1
  
end

puts ctn

n,k = gets.split.map(&:to_f)
p = 0
n.to_i.times do |i|
  j = 0
  count = 0
  while (i+1) * 2**j < k
    j += 1
    count +=1
  end
  p += 1/n * (1/(2**count).to_f)
end
puts p
n = gets.to_i
hash = {}
n.times do |i|
  ary = gets.split(' ')
  hash[i+1] = ary
end

sorted = hash.sort do |a, b|
  (a[1][0] <=> b[1][0]).nonzero? || (b[1][1].to_i <=> a[1][1].to_i)
end

sorted.each do |a|
  print("#{a[0]}\n")
end
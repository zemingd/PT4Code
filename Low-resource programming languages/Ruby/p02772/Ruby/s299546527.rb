_ = gets.to_i
arr = gets.chop.split.map(&:to_i)
res = true
for i in arr
  next if (i%2) > 0 || ((i%3 == 0) || (i%5 == 0))
  res = false
  break
end
puts res ? 'APPROVED' : 'DENIED'

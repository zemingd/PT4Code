one = gets
two = gets
 
res = []
two.split("").each do |s|
  res[-1] != s ? res.push(s) : next
end
 
puts res.count
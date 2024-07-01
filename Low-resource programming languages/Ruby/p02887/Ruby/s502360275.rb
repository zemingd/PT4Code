one = gets
two = gets.split("")
 
res = [two.shift]
two.each do |s|
  res.last != s ? res.push(s) : next
end
 
puts res.count
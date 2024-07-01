text = " "
while line = gets
  text += line.chomp.downcase
end

res = {}
for c in 'a'..'z'
  res[c] = text.count(c)
end

res.each do |k,v|
  puts k + " : " + v.to_s
end
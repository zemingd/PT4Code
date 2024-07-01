s=gets.chomp.chars
res=[]
s.each do |i|
  i == 'B' ? res.pop : res << i
end
puts res.join

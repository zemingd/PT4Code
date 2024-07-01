n=gets.to_i
s=gets.chomp.chars
res=1
s.each_with_index do |el,i|
  next if i==0
  res+=1 if el!=s[i-1]
end
puts res

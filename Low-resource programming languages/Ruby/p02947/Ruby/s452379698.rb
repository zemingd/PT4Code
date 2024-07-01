n=gets.to_i
s=[]
n.times do |i|
  s[i]=gets.chomp.chars
  s[i].sort!
end
s.sort!
s=s.select{|e|s.count(e)>1}
ans=0
for i in 0...s.size
  j=i+1
  while s[j-1]==s[j]
    j+=1
    ans+=1
  end
end
puts ans

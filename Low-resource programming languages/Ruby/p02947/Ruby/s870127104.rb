n=gets.to_i
s=[]
n.times do |i|
  s[i]=gets.chomp.chars
  s[i].sort!
end
s.sort!
ans=0
for i in 0...n-1
  for j in i+1...n
    if s[i]==s[j]
      ans+=1
    end
  end
end
puts ans

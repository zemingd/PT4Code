a,b = gets.split.map(&:to_i)
ans=0
a.upto(b) do |i|
  s=i.to_s
  if s[0]==s[4] && s[1]==s[3]
    ans+=1
  end
end
puts ans
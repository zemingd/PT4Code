a,b=gets.split.map(&:to_i)
sum=0
for i in a..b
  s=i.to_s
  sum+=1 if s[0]==s[4] && s[1]==s[3]
end
puts sum

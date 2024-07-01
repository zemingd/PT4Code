a,b=gets.split.map &:to_i
c=0
a.upto(b) do |i|
  s=i.to_s
  c+=1 if s[0]==s[4]&&s[1]==s[3]
end
p c
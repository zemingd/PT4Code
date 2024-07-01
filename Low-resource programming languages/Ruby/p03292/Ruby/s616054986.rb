s=gets.chomp.chars
t=gets.chomp.chars
ans=0
for i in 0...s.size
  s << s[0]
  s.shift
  ans=1 if s==t
end
puts ans==0? "No":"Yes"

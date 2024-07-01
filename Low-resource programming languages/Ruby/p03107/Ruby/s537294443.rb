s=gets.strip.codepoints
cnt=-2
zero="0".codepoints[0]
one="1".codepoints[0]
ze_c=0
on_c=0
for i in 0..s.size-1
    ze_c+=1 if s[i]==zero
    on_c+=1 if s[i]==one
    cnt=i+1 if ze_c==on_c
end
puts cnt

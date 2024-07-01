s=gets.chomp
k=gets.to_i
idx=-1
for i in 0...s.size
  if s[i]!='1';idx=i;break;end
end
if idx!=-1
  s=s[0..idx]
end
puts s[[k,s.size-1].min]
x,y=gets.split.map!{|i|i.to_i}
s=gets.split.map!{|i|i.to_i}
for i in 1..y
  max=0
  kazu=0
  for j in 0..x-1
    if max<s[j]
      max=s[j]
      kazu=j
    end
  end
  s[kazu]=0
end
puts s.sum

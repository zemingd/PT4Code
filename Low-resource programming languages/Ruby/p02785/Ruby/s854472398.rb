x,y=gets.split.map!{|i|i.to_i}
s=gets.split.map!{|i|i.to_i}
for i in 1..y
  kazu=s.max
  if s[i]==kazu
    s[kazu]=0
  end
end
puts s.sum

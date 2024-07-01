x,y=gets.split.map!{|i|i.to_i}
s=gets.split.map!{|i|i.to_i}
for i in 1..y
  kazu= s.max
  for j in 0..x-1
    if s[j]==kazu
      s[j]=0
      break
    end
  end
end
puts s.sum

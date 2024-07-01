k=gets.to_i
s=gets.to_s
 
if s.size >= k
  puts s[0..k-1] + "..."
else
  puts s
end
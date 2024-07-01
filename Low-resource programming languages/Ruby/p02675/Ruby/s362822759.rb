k=gets.to_i
s=gets.chomp

l=s.length

if k >= l
  puts s
else
  puts s[0..k-1] + "..."
end
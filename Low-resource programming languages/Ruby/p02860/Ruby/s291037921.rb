n =gets.to_i
s = gets.chomp
if s.size.odd?
  p 'No'
  exit
end
puts s[0,n/2]*2 == s ? 'Yes' : 'No'
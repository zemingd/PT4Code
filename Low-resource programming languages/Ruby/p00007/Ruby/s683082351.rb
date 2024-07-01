n =gets.to_i
s = 100000


n.times  do
  s = s + (s*0.05)
  s = s.to_f / 1000
  s = s.ceil*1000
end

puts s

s=gets.chomp.chars
k=gets.to_i
while k>1
  if s.first==?1
    k-=1
    s.shift
  else
    k=1
  end
end
puts s.first
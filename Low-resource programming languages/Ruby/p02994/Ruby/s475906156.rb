
N,L=gets.split.map(&:to_i)
 
if L+N-1<0
  puts (L...(L+N-1)).inject(&:+)
elsif L>0
  puts ((L+1)...(L+N)).inject(&:+)
else
  puts (L...(L+N)).inject(&:+)
end
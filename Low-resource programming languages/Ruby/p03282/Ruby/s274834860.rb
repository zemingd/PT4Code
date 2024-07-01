S=gets.chomp
K=gets.to_i
i=-1
S.size.times do |x|
  i = x
  break unless x == ?1
end
if i=S.index(/[^1]/)
  puts K-1<i ? S[K-1] : S[i]
else
  puts S[K-1]
end

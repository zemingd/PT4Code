S=gets.chomp
K=gets.to_i
i=S.index(/[^1]/)
if i
  puts K<i+1 ? S[K] : S[i]
else
  puts S[K-1]
end

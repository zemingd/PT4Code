S = gets.chomp
N = S.size
S1 = S[0...(N / 2)]
S2 = S[(N / 2 + 1)...N]
puts (if S1 == S2
  'Yes'
else
  'No'
end)
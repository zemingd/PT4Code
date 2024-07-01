S = gets().to_s
T = Array.new(S.length - 3)
U = Array.new(S.length - 3)
for i in 0 .. S.length - 4
  T[i] = (S[i].to_i) * 100 + (S[i + 1].to_i) * 10 + (S[i + 2].to_i)
end
for i in 0 .. S.length - 4
  U[i] = 753 - T[i]
  if  U[i] < 0
    U[i] = -U[i]
  end
end
p(U.min)
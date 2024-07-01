S = gets.to_s
N = S.length - 1
it = 0
tt = 0
for i in 0..N do
  if i%2 != S[i].to_i
    it = it + 1
  end
end
for j in 0..N do
  if j%2 == S[j].to_i
    tt = tt + 1
  end
end
puts [it,tt].min
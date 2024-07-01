N = gets.chop.to_i
S = gets.chop

a=0
b=0
for num in 0..N-1 do
  if S[num] == "#" and S[num+1] == "."
    a = S.slice(num + 1 .. N-1).count('.')
    break
  end
end

for num in 0..N-1 do
  if S[N - num - 2] == "#" and S[N - num - 1] == "."
    b = S.slice(0..N - num - 2).count('#')
    break
  end
end

p (a<b)?a:b
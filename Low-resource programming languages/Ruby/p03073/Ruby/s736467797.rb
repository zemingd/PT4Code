S = gets
N = S.length

a, b = 0, 0
for i in 0...N do
  
  if i % 2 == 0 then
    a += 1 if S[i] == '0'
    b += 1 if S[i] == '1'
  end
  
  if i % 2 == 1 then
    a += 1 if S[i] == '1'
    b += 1 if S[i] == '0'
  end
end

ans = [a, b].min
p ans


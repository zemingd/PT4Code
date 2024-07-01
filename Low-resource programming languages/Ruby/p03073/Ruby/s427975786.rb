S = gets.chomp
N = S.length

cand1 = 0   #cost start from 0
cand2 = 0   #cost start from 1
for i in 1..N do
  if i % 2 == 0 then
    if S[i-1] == "0" then
      cand2 += 1
    else
      cand1 += 1
    end
  else
    if S[i-1] == "1" then
      cand2 += 1
    else
      cand1 += 1
    end
  end
end
    
if cand1 < cand2 then
  puts cand1
else
  puts cand2
end
a,b,k = gets.chomp.split(" ").map { |e|e.to_i }
ai = gets.chomp.split(" ").map { |e|e.to_i }
bi = gets.chomp.split(" ").map { |e|e.to_i }
aiSum = []
biSum = []
cand = []
candNum = []
num = 0
max = 0
ans = 0

aiSum[0] = 0
for i in 0..ai.count - 1 do
  aiSum[i + 1] = ai[i] + aiSum[i]
end

biSum[0] = 0
for j in 0..bi.count - 1 do
  biSum[j + 1] = bi[j] + biSum[j]
end

for i in 0..aiSum.count - 1 do
  for j in 0..biSum.count - 1 do
    cand << aiSum[i] + biSum[j]
    num = i + j
    candNum << num
  end
end

for i in 0..cand.count - 1 do
  if cand[i] <= k && max <= cand[i]
    max = cand[i]
    ans = candNum[i]
    if ans < candNum[i]
      ans = candNum[i]
    end
  end
end

puts ans

a,b,k = gets.chomp.split.map(&:to_i)
ai = gets.chomp.split.map(&:to_i)
bi = gets.chomp.split.map(&:to_i)
aiSum,biSum = [0],[0]
for i in 0..ai.count - 1 do
  if ai[i] + aiSum[i] > k
    break
  end
  aiSum[i + 1] = ai[i] + aiSum[i]
end
for j in 0..bi.count - 1 do
  if bi[j] + biSum[j] > k
    break
  end
  biSum[j + 1] = bi[j] + biSum[j]
end

num = 0
best = biSum.count - 1
aiSum.each_with_index do |a,i|
  while biSum[best] > k - a
    best -= 1
  end
  if num < i + best
    num = i + best
  end
end
puts num

a,b,k = gets.chomp.split(" ").map { |e|e.to_i }
ai = gets.chomp.split(" ").map { |e|e.to_i }
bi = gets.chomp.split(" ").map { |e|e.to_i }
aiSum,biSum = [],[]

aiSum[0] = 0
for i in 0..ai.count - 1 do
  if ai[i] + aiSum[i] > k
    break
  end
  aiSum[i + 1] = ai[i] + aiSum[i]
end
biSum[0] = 0
for j in 0..bi.count - 1 do
  if bi[j] + biSum[j] > k
    break
  end
  biSum[j + 1] = bi[j] + biSum[j]
end


num = 0
best = biSum.count - 1
for i in 0..aiSum.count - 1 do
  (0..best).to_a.reverse.each do |j|
    if aiSum[i] + biSum[j] <= k
      best = j

      if num < i + j
        num = i + j
      end
      break
    end
  end
end

puts num

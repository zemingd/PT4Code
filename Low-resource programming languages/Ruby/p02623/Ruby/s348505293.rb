N, M, K = gets.chomp.split.map(&:to_i)
aAry = gets.chomp.split.map(&:to_i)
bAry = gets.chomp.split.map(&:to_i)

aSubtotals = [0]
aAry.each do |a|
    aSubtotals.push(aSubtotals[-1] + a)
end

bSubtotals = [0]
bAry.each do |b|
    bSubtotals.push(bSubtotals[-1] + b)
end

ans = 0
bestJ = M
0.upto(N) do |i|
    break if aSubtotals[i] > K
    bestJ.downto(0) do |j|
        if aSubtotals[i] + bSubtotals[j] <= K then
            ans = [ans, (i + j)].max
            bestJ = j
            break
        end
    end
end
puts ans

# ans = 0
# (N + 1).times do |n|
#     (M + 1).times do |m|
#         if aAry[0, n].sum + bAry[0, m].sum <= K then
#             ans = n + m if ans < n + m
#         end
#     end
# end
# puts ans

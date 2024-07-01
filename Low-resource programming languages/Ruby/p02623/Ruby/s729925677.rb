N, M, K = gets.chomp.split.map(&:to_i)
aAry = gets.chomp.split.map(&:to_i)
bAry = gets.chomp.split.map(&:to_i)

bTotalsAry = []
bAry.each do |b|
    if bTotalsAry.empty? then
        bTotalsAry.push(b)
    else
        bTotalsAry.push(bTotalsAry[-1] + b)
    end
end

ans = 0
aTotal = 0
bestM = M
(N + 1).times do |n|
    aTotal += aAry[n - 1] unless n == 0
    break if aTotal > K
    
    bTotal = 0
    bestM.downto(0) do |m|
        if aTotal + bTotalsAry[m - 1] <= K then
            ans = n + m if ans < n + m
            bestM = m
            break
        end
        # puts "n, m = " + n.to_s + ", " + m.to_s + " now."
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

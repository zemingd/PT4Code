N, M, K = gets.chomp.split.map(&:to_i)
aAry = gets.chomp.split.map(&:to_i)
bAry = gets.chomp.split.map(&:to_i)

ans = 0
aTotal = 0
(N + 1).times do |n|
    aTotal += aAry[n - 1] unless n == 0
    break if aTotal > K
    
    bTotal = 0
    (M + 1).times do |m|
        bTotal += bAry[m - 1] unless m == 0
        break if aTotal + bTotal > K
        ans = n + m if ans < n + m
        puts "n, m = " + n.to_s + ", " + m.to_s + " now."
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

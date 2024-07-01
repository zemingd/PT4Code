#B-754
S = gets.chomp.split('').map(&:to_i)
ans = 643
target = 753
for i in 0..S.length-3 do
    if (S[i]*100+S[i+1]*10+S[i+2] - target).abs < ans
        ans = (S[i]*100+S[i+1]*10+S[i+2] - target).abs
    end
end
puts ans
A,B = gets.split.map(&:to_i)
ans = (A - B).abs/2
if A > B
    K = A - ans
else
    K = B - ans
end

if (A - K).abs == (B - K).abs
    puts K
else
    puts "IMPOSSIBLE"
end
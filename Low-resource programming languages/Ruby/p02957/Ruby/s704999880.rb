A,B = gets.split.map(&:to_i)
ans = (A - B).abs/2
K = A - ans
if (A - K).abs == (B - K).abs
    puts K
else
    puts "IMPOSSIBLE"
end
X, K, D = gets.chomp.split(' ').map(&:to_i)

divided = X.abs / D

if divided > K then
    puts X.abs - D * K
else
    x = X.abs - D * divided
    k = K - divided
    #puts "x = #{x}, k = #{k}"
    if k.even? then
        puts x
    else
        puts (x - D).abs
    end
end

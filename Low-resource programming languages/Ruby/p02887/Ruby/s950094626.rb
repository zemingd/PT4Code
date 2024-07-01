N = gets.to_i
S = gets.chomp

ret = 0
pre = nil
(0..(N-1)).each do |i|
    if pre != S[i]
        pre = S[i]
        ret += 1
    end
end
puts ret
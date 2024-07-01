N,K=$<.read.split.map(&:to_i)

prob = 0
1.upto(N) do |i|
    b = 1
    while i < K
        b *= 2 
        i *= 2
    end
    prob += 1/b.to_f
end

puts prob/N
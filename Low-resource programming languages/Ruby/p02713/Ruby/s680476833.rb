K = gets.to_i

gcd = ->(a,b){
    return gcd.call(b,a) if b>a
    until((r=a%b) == 0)
        a,b = b,r
    end
    b
}

triple = K*(K+1)/2
double = 0
single = 0
(1..(K-1)).each do |a|
    ((a+1)..K).each do |b|
        double += gcd.call(b,a)
    end
end

single = 0
(1..(K-2)).each do |a|
    ((a+1)..(K-1)).each do |b|
        d = gcd.call(b,a)
        ((b+1)..K).each do |c|
            single += gcd.call(c,d)
        end
    end
end
p triple + (6*double) + (6*single)
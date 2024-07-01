K=gets.to_i

b=1
c=1
sum=0

(c..K).each do |a|
    (b..K).each do |b|
        (1..K).each do |c|
            sum+=a.gcd(b.gcd(c))
        end
    end
end

puts sum
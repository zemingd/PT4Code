f = gets.chomp.to_i
all = 0


(1..f).each do |a|
    (1..f).each do |b|
        e = a.gcd(b)
        (1..f).each do |c|
            all += c.gcd(e)
        end
    end
end
puts all
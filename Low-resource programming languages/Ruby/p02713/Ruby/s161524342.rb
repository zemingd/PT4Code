f = gets.chomp.to_i
all = 0


1.upto(f).each do |a|
    1.upto(f).each do |b|
        e = b.gcd(a)
        1.upto(f).each do |c|
            all = e.gcd(c)
        end
    end
end
puts all

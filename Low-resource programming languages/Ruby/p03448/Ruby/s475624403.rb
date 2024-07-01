a, b, c, x = readlines.map(&:chomp).map(&:to_i)
n = 0
(0..a).each do |a|
    (0..b).each do |b|
        (0..c.to_i).each do |c|
         n += 1 if a*500 + b*100 + c* 50 == x
        end
    end
end
p n
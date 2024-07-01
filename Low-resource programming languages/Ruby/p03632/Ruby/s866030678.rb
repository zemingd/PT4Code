n = 0
a, b, c, d=gets.split.map(&:to_i)
(a..b).each do |x|
    (c..d).each do |y|
    n += 1 if x == y
    end
end
p n > 0 ? n-1 : 0;
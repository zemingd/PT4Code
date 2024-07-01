x, k, d = gets.chomp.split(" ").map(&:to_i)

if x > d * k
    puts x - d * k
else
    v2 = (x.to_f / d.to_f).ceil
    v3 = k - v2 + (v2 % 2 == 0 ? 1 : 0)
    puts x - d * v2 + d * v3
end
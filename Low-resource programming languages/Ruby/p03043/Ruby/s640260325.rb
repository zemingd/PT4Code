n, k = gets.chomp.split(" ").map(&:to_i)

sigma = 0.0
(1..n).each do |i|
    ruijo = 2
    p = 0.5
    while k > i * ruijo
        ruijo *= 2
        p *= 0.5
    end
    sigma += p
end
sigma = sigma.to_f / n.to_f

puts sigma
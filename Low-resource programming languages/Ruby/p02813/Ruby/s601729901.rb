n = gets.to_i
pp = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)

a = b = 0
i = 0
(1..n).to_a.permutation do |arr|
    a = i if arr == pp
    b = i if arr == q
    i += 1
end

puts (a - b).abs
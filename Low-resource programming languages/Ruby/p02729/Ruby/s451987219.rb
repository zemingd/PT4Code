N, M = gets.chomp.split.map(&:to_i)

if N > 1 then
    sum1 = (1..N).to_a.combination(2).size
end

if M > 1 then
    sum2 = (1..M).to_a.combination(2).size
end

puts sum1 + sum2

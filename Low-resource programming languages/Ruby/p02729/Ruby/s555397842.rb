N, M = gets.chomp.split.map(&:to_i)

sumN = 0
if N > 1 then
    sumN = (1..N).to_a.combination(2).size
end

sumM = 0
if M > 1 then
    sumM = (1..M).to_a.combination(2).size
end

puts sumN + sumM

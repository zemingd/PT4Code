n = gets.to_i
w = gets.split(' ').map(&:to_i)
sums = []
sum = 0
n.times do |a|
    sum = sum + w[a]
    sums << sum
end
results = []
result = 0
n.downto(2) do |b|
    restsum = sums[-1]-sums[b-2]
    result = (sums[b-2] - restsum).abs
    results << result
end
puts results.min

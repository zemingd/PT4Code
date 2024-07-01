N,K = gets.split.map(&:to_i)
l = gets.strip.split.map(&:to_i)
sum = 0
for i in 0..K-1
    sum += (l.sort)[N-1-i]
end

puts sum
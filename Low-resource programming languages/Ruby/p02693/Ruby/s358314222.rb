K = gets.to_i

A, B = gets.split.map(&:to_i)

res = "NG"
for i in A..B do 
    res = "OK" if i % K == 0
end

puts res
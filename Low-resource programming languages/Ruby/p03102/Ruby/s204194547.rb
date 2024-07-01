N,M,C = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

count = 0
N.times do
    a = gets.split(" ").map(&:to_i)
    sum = 0
    M.times do |i|
        sum += a[i] * b[i]
    end
    count += 1 if sum + C > 0
end
print count
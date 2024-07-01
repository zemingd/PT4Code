n, k = gets.chomp.split.map(&:to_i)
num = Array.new(100001){0}
n.times do
    a, b = gets.chomp.split.map(&:to_i)
    num[a] += b
end
sum = 0
100001.times do |i|
    sum += num[i]
    if sum >= k
        puts i
        break
    end
end

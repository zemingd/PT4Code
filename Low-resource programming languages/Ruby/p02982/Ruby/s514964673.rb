require 'pp'

n, d = gets.chomp!.split(" ").map(&:to_i)
x_n = []
n.times do |i|
    x = gets.chomp!.split(" ").map(&:to_i)
    x_n << x
end

#pp x_n
count = 0

memo = {}
0.upto(130) do |i|
    memo[i*i] = i
end

#pp memo


0.upto(n-2) do |i|
    (i + 1).upto(n-1) do |j|
        sum = 0
        x_n[i].zip(x_n[j]).each do |x, y|
            sum += (x - y) ** 2
        end
        
        if memo[sum]
            count += 1
        end
    end
end

puts count

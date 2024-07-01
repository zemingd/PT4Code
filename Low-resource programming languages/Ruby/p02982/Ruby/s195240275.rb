n, d = gets.chomp.split(" ").map(&:to_i)
x = []
n.times do
    x << gets.chomp.split(" ").map(&:to_i)
end

ans = 0

n.times do |i|
    (i+1).upto(n-1) do |j|
        sum = 0
        d.times do |k|
            tmp = (x[i][k] - x[j][k]).abs
            sum += tmp*tmp
        end
        flag = false
        (sum+1).times do |k|
            flag = true if k*k == sum
        end
        ans += 1 if flag
    end
end

puts ans
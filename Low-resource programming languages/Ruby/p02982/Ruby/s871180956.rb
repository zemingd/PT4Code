n, d = gets.split(' ').map(&:to_i)

ary = []
n.times do
    ary << gets.split(' ').map(&:to_i)
end

count = 0
(n-1).times do |i|
    (n-1-i).times do |k|
        sum = 0
        d.times do |j|
            sum += (ary[i][j] - ary[i+k+1][j])**2
        end
        count += 1 if Math.sqrt(sum) == Math.sqrt(sum).to_i
    end
end

print count
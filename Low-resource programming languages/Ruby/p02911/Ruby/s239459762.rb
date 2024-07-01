n, k, q = gets.chomp.split.map(&:to_i)
ans = Array.new(n, 0)

q.times do
    ans[gets.to_i - 1] += 1
end

n.times do |i|
    sum = k - (q - ans[i])
    if sum > 0
        puts 'Yes'
    else
        puts 'No'
    end
end
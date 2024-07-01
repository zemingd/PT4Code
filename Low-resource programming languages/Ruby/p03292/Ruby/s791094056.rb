a = gets.chomp.split(" ").map(&:to_i)
costs = []
a.permutation(3).each do |e|
    cost = 0
    3.times do |i|
        next if i == 0
        cost += (e[i] - e[i - 1]).abs
    end
    costs.push(cost)
end
puts costs.min
line = gets.chomp.split(" ").map(&:to_i)
n = line[0]
bridge = Array.new(n - 1, 0)
order_list = Array.new

line[1].times do
    order = gets.chomp.split(" ").map(&:to_i).map{|item| item - 1}

    (order[0]..order[1] - 1).each do |i|
        bridge[i] += 1
    end

    order[1] -= 1
    order_list.push(order)
end

answer = 0
while !order_list.empty?
    max = 0
    location = 0
    bridge.length.times do |i|
        if max < bridge[i]
            max = bridge[i]
            location = i
        end
    end
    order_list.reverse_each do |order|
        if order[0] <= location and location <= order[1]
            (order[0]..order[1]).each do |prace|
                bridge[prace] -= 1
            end
            order_list.delete(order)
        end
    end

    answer += 1
end
p answer

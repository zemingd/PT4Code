line = gets.chomp.split(" ").map(&:to_i)
n = line[0]
delete_bridge = Array.new
order_list = Array.new

line[1].times do
    order = gets.chomp.split(" ").map(&:to_i).map{|item| item - 1}
    order[1] -= 1

    share_flag = false
    delete_bridge.each do |bridge|
        if order[1] < bridge[0] or bridge[1] < order[0]
            next
        else
            share_flag = true
            bridge[0] = bridge[0] <= order[0] ? order[0] : bridge[0]
            bridge[1] = bridge[1] <= order[1] ? bridge[1] : order[1]
            break
        end
    end
    delete_bridge.push(order) unless share_flag
end

puts delete_bridge.length

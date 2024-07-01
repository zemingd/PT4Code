line = gets.chomp.split(" ").map(&:to_i)
n = line[0]
delete_bridge = Array.new
order_list = Array.new

line[1].times do
    order = gets.chomp.split(" ").map(&:to_i).map{|item| item - 1}
    order[1] -= 1
    order = (order[0]..order[1]).to_a
    order = Array.new(1, order[0]) if order[0] == order[1]
    p order

    share_flag = false
    delete_bridge.length.times do |i|
        bridge = delete_bridge[i]
        share = order & bridge
        unless share.empty?
            share_flag = true
            delete_bridge[i] = share
            break
        end
    end
    delete_bridge.push(order) unless share_flag
    p delete_bridge
end

puts delete_bridge.length

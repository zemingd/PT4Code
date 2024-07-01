require 'pp'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map(&:to_i)

memo = {}
min = 10 ** 10
min_id = -1
a_n.each_with_index do |a, i|
    memo[i] = a
    if a < min
        min = a
        min_id = i
    end 
end

#pp min
#pp min_id

while memo.size > 1
    del_list = []
    now_min = min
    now_min_id = min_id

    memo.each do |id, v|
        next if id == now_min_id

        memo[id] = memo[id] % now_min
        if memo[id] == 0
            del_list << id
        elsif memo[id] < min
            min = memo[id]
            min_id = id
        end
    end

    del_list.each {|id| memo.delete(id) }
end 

puts memo.values.first

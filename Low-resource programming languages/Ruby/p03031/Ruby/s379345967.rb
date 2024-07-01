switch_num, light_num = gets.chomp.split(" ").map {|item| item.to_i }

light_targets = []
light_num.times do |index|
    k, *target_swiches = gets.chomp.split(" ").map {|item| item.to_i }
    light_targets.push(target_swiches)
end
amari_list = gets.chomp.split(" ").map {|item| item.to_i }

c = 0
(2 ** switch_num).times do |n|
    flag = true
    swich_pattern = n.to_s(2).rjust(switch_num, '0').split("").map{|c| c.to_i}
    light_targets.each_with_index do |target_swiches, i|
        on_num = 0
        target_swiches.each do |target|
            if swich_pattern[target-1] == 1
                on_num += 1
            end
        end
        if on_num % 2 == amari_list[i]

        else
            flag = false
            break
        end
    end
    if flag == true
        c += 1
    end
end
puts c
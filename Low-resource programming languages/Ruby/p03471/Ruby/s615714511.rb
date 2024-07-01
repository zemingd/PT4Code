    cnt,target_amount = gets.chomp.split(" ").map(&:to_i)

    ans = "-1 -1 -1"
    is_hit = false
    (0..cnt).each do |yukichi_num|
        left_cnt = cnt - yukichi_num
        (0..left_cnt).each do |highchi_num|
            noguchi_num = left_cnt - highchi_num
            amount = 10000 * yukichi_num + 5000 * highchi_num + 1000 * noguchi_num
            # print (yukichi_num.to_s + "\t" + highchi_num.to_s + "\t" + noguchi_num.to_s + "\t" + amount.to_s + "\n")
            if (amount == target_amount) then
                ans = "%d %d %d" % [yukichi_num, highchi_num, noguchi_num]
                is_hit = true
            end
            break if is_hit
        end
        break if is_hit
    end
    print(ans)
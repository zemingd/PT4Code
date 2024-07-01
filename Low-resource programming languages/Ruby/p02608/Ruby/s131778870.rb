num = gets.chomp.to_i
# num = 20 
# 入力値を受けとる



(1..num).each do |n|

    result_count = 0


    pre_arr_x = (1..n).to_a
    pre_arr_y = (1..n).to_a
    pre_arr_z = (1..n).to_a

    total_arr = pre_arr_x.product(pre_arr_y, pre_arr_z)
    # 全ての組み合わせを一つの配列に格納してくれる

    
    total_arr.each do |a|
        x = a[0]
        y = a[1]
        z = a[2]

        if (x + y + z) ** 2 - (x * y + y * z + z * x) === n
            result_count += 1
        end

    end

    p result_count

end




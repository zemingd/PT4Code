_,k = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)

if k == 0
    x = 0
    ans = 0
    ary.each do |item|
        ans += item ^ x
    end
    puts ans
else
    keta = (Math.log10(k)/Math.log10(2)).floor
    # １か０だったら０にする
    # もう一度Kと比較して上だったら許される一番小さな桁を消す
    # tmp_ans - (tmp_ans & k - k)

    # 2**0 ~ 2**keta
    count = Array.new(keta+1, 0)
    # p count

    ary.each do |item|
        (keta+1).times do |i|
            tmp1 = (item >> i) & 1
            # p tmp1
            if tmp1 == 0
                count[i] -= 1
            else
                count[i] += 1
            end
        end
        # p count
    end
    # p count
    # p keta
    x = 0
    (keta+1).times do |i|
        if count[i] >= 0
            # x += 0
        else
            x += 2 ** i
        end
        # p x
    end

    if x > k
        x = x - (x | k - k)
    end
    # p "x"
    # p x
    # p "count"
    # p count

    ans = 0
    ary.each do |item|
        ans += item ^ x
    end
    puts ans
end
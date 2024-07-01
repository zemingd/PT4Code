def bb
    h,w = gets.chomp.split(/\s/).map{|x| x.to_i}

    ai = []
    for i in 1..h
        ar = gets.chomp.split(//).map{|x| x=='.'?0:1}
        aq = ar.uniq
        ai.push(ar) unless aq.length == 1 and aq[0] == 0 # 1行全部0の場合、pushしない
    end

    # 列を削除・・
    ak = []
    idx = 0
    ai.transpose.each do |aj|
        al = aj.uniq
        if al.length == 1 and al[0] == 0
            ak.push(idx)
        end
        idx += 1
    end

    ai.each do |a|
        idx = 0
        a.each do |b|
            if ak.include?(idx)
                idx += 1
                next
            end
            print b==0?'.':'#'
            idx += 1
        end
        puts
    end
end

bb

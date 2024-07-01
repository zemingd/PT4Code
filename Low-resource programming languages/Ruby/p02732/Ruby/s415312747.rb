n = gets.chomp.to_i
aa = gets.split.map(&:to_i)

len  = Array.new(n,0)
len2 = Array.new(n,0)
#1~nまで順番にその要素数を数え上げて
#各要素を格納する
aa.each{ |l|
    len[l-1] += 1
}
#各要素が1こ減ったときの組み合わせ数を計算する
n.times{ |l|
    #初期化
    #l番目の要素が1個減った配列を用意
    tmp = len.dup
    total = 0
    if tmp[l] > 0  then tmp[l] -= 1 end
    #そもそも数値が現れなければ計算しない
    if tmp[l] != 0 then 
        n.times{ |m|
            if tmp[m] >= 2 then
                total += tmp[m]*(tmp[m]-1)/2
            end
        }
    end
    len2[l] = total
}
aa.each{ |bb|
    p len2[bb-1]
}

# 入力を取得
N = gets
S = gets

s_arry = S.split("")

i = 0
j = 1
s_arry.each{|s|
    while j != N do
        if s == s_arry[j]
            j = j + 1
        else
            break
        end
    end
    
}
# Nを取得
# N = input.to_i


# 結果を出力
# print result

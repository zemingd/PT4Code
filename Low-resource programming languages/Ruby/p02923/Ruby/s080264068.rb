# 入力を取得
N = gets
H = gets

h_str = H.split(" ")

maxMove = 0
i = 0
cnt = 0
while i <=  N.to_i-2
    if h_str[i].to_i >= h_str[i+1].to_i
        i += 1
        cnt += 1
    else
        i += 1
        cnt = 0
    end
    maxMove = cnt if cnt > maxMove
end

# 結果を出力
print maxMove
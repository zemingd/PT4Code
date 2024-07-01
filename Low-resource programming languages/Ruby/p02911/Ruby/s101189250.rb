# 入力を取得
input = gets
tmp = input.split(" ")

# 文字列
N = tmp[0]
K = tmp[1]
Q = tmp[2]

point = []

# デフォルトのポイントをセット
for i in 0..N.to_i-1
    point.push(K.to_i-Q.to_i)
end

# ポイントの計算
for i in 0..Q.to_i-1
    a = gets
    point[a.to_i-1]+=1
end

# # Yes,Noに変換
result = point.map{|p|
    if p <= 0
        "No"
    else
        "Yes"
    end
}

# 結果を出力
puts result
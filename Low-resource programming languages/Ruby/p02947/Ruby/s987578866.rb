n = gets.to_i
ss = n.times.map { gets.strip }

# アナグラムである = 文字列中の文字をソートした結果が一致する

# すべてのsをソートして、同じものが何回登場するかで組み合わせの数がわかるので
# それらの総和が答え

# 各文字列の文字をソートする
# ["acornistnt", "peanutbomb", "constraint"]
# => ["acinnorstt", "abbemnoptu", "acinnorstt"]
sorted = ss.map {|s| s.chars.sort.join}

# 文字列=>登場回数のハッシュを作る
# ["acinnorstt", "abbemnoptu", "acinnorstt"]
# => {"acinnorstt"=>2, "abbemnoptu"=>1}
freq = sorted.each_with_object(Hash.new(0)) {|s, hash| hash[s] += 1}

# 組み合わせの数だけが欲しいので値だけの配列にする
# {"acinnorstt"=>2, "abbemnoptu"=>1}
# => [2, 1]
counts = freq.values

# 組み合わせを計算したいけど自分で実装するのだるいのでcombination(2)を使いたいが
# [2, 1]のままではcombination(2)できないので、各数字に応じた要素数を持つ配列を作っておく
# [2, 1]
# => [[1, 2], [1]]
arr = counts.map {|count| (1..count).to_a}

# 各配列について組み合わせの数を求めて総和をとったものが答え
# [[1, 2], [1]]
# => 1
puts arr.map {|arr| arr.combination(2).count}.inject(:+)
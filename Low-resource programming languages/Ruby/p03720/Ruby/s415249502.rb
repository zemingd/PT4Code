N, M = gets.split.map(&:to_i)
a, b = M.times.map { gets.chomp.split.map(&:to_i) }.transpose # 自身を行列と見立てて、行列の転置(行と列の入れ換え)を行う。転置した配列を生成して返す。

ans = Array.new(N + 1, 0) # 長さ size の配列を生成し、各要素を val で初期化して返す。

M.times do |i|
  ans[a[i]] += 1
  ans[b[i]] += 1 
end

puts ans
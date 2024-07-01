N, K = gets.chomp.split.map(&:to_i)
v = gets.chomp.split.map(&:to_i)

# K個のうちkことってK-k個返すことにする
# TLEになったらそこだけ累積和にしてみる
ans = 0

def max(a, b)
  a > b ? a : b
end

0.upto(K) do |i|
  0.upto(K) do |j|
    m = i + j
    break if m > 4
    # p v[0,i]
    # p v[N-j,j]
    tmp = (v[0,i] + v[N-j,j]).sort

    # 和を取る
    tmp_sum = tmp.sum

    # p tmp

    # 価格がマイナスなものをK-(i+j)回まで取り除くことができる

    (K-m).times do |l|
      break if tmp.size <= l
      break if tmp[l] > 0
      tmp_sum -= tmp[l]
    end

    ans = max(ans, tmp_sum)
  end
end

p ans
